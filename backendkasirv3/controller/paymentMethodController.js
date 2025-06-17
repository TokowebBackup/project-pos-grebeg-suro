// controllers/paymentMethodController.js
const PaymentMethod = require('../models/paymentMethodModel');
const path = require('path');
const fs = require('fs');

// Setup multer untuk menyimpan file ke public/uploads/qris
// const storage = multer.diskStorage({
//     destination: (req, file, cb) => {
//         const uploadPath = path.join(__dirname, '..', 'public', 'uploads', 'qris');
//         // Buat folder jika belum ada
//         fs.mkdirSync(uploadPath, { recursive: true });
//         cb(null, uploadPath);
//     },
//     filename: (req, file, cb) => {
//         // Simpan file dengan timestamp dan ekstensi asli
//         const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
//         cb(null, uniqueSuffix + path.extname(file.originalname));
//     }
// });

// const upload = multer({ storage: storage });

// // Middleware multer untuk single file upload di field qrisImage
// exports.uploadQrisImage = upload.single('qrisImage');

// Ambil semua metode pembayaran
exports.getAllPaymentMethods = async (req, res) => {
    try {
        const methods = await PaymentMethod.findAll();
        return res.status(200).json({ status: true, data: methods });
    } catch (error) {
        return res.status(500).json({ status: false, message: error.message });
    }
};

// Tambah metode pembayaran dengan upload file
exports.uploadQrisImage = async (req, res, next) => {
    // Jika tidak ada file dan ini request POST (create), tolak
    if (!req.files || !req.files.qrisImage) {
        if (req.method === 'POST') {
            return res.status(400).json({ status: false, message: 'QRIS image is required' });
        } else {
            // PUT/UPDATE boleh tanpa file
            return next();
        }
    }

    try {
        const file = req.files.qrisImage;

        // Buat nama unik
        const filename = Date.now() + '-' + file.name.replace(/\s+/g, '-');
        const uploadPath = path.join(__dirname, '../public/uploads/qris', filename);

        // Simpan file
        await file.mv(uploadPath);

        // Set supaya bisa dibaca controller
        req.file = { filename };

        next();
    } catch (error) {
        return res.status(500).json({
            status: false,
            message: 'Failed to upload QRIS image',
            error: error.message,
        });
    }
};

// Tambah metode pembayaran dengan upload file
exports.addPaymentMethod = async (req, res) => {
    try {
        const { isDefault } = req.body;
        const file = req.files.qrisImage; // Ambil file dari req.files

        // Validasi input
        if (!file) {
            return res.status(400).json({ status: false, message: 'QRIS image is required' });
        }

        const ext = path.extname(file.name).toLowerCase();
        const allowedTypes = ['.png', '.jpg', '.jpeg', '.webp'];
        if (!allowedTypes.includes(ext)) {
            return res.status(422).json({ status: false, message: 'Invalid file type. Allowed: .png, .jpg, .jpeg' });
        }

        const fileName = `qris-${Date.now()}${ext}`;
        const uploadPath = path.join(__dirname, '..', 'public', 'uploads', 'qris');

        // Buat folder jika belum ada
        if (!fs.existsSync(uploadPath)) {
            fs.mkdirSync(uploadPath, { recursive: true });
        }

        // Simpan file
        await file.mv(path.join(uploadPath, fileName), (err) => {
            if (err) {
                return res.status(500).json({ status: false, message: 'Failed to upload file' });
            }
        });

        const paymentMethod = await PaymentMethod.create({
            file: `/uploads/qris/${fileName}`, // Simpan path file
            isDefault: isDefault === 'true' || isDefault === true,
        });

        return res.status(201).json({ status: true, data: paymentMethod });
    } catch (error) {
        console.error("Error in addPaymentMethod:", error);
        return res.status(500).json({ status: false, message: 'Terjadi kesalahan server', error: error.message });
    }
};


// Update metode pembayaran dengan upload file opsional
exports.updatePaymentMethod = async (req, res) => {
    const { id } = req.params;
    const isDefault = req.body.isDefault === 'true' || req.body.isDefault === true;

    try {
        const method = await PaymentMethod.findByPk(id);
        if (!method) {
            return res.status(404).json({ status: false, message: 'Metode pembayaran tidak ditemukan' });
        }

        // Jika ada file baru dikirim, ganti file-nya
        if (req.file) {
            method.file = `/uploads/qris/${req.file.filename}`;
        }

        method.isDefault = isDefault !== undefined ? isDefault : method.isDefault;

        await method.save();

        return res.status(200).json({ status: true, message: 'Metode pembayaran diperbarui', data: method });
    } catch (error) {
        return res.status(500).json({ status: false, message: error.message });
    }
};

// controllers/paymentMethodController.js
exports.deletePaymentMethod = async (req, res) => {
    const { id } = req.params;

    try {
        const method = await PaymentMethod.findByPk(id);
        if (!method) {
            return res.status(404).json({ status: false, message: 'Metode pembayaran tidak ditemukan' });
        }

        // Hapus metode pembayaran dari database
        await method.destroy();

        // Jika Anda ingin menghapus file yang diupload, Anda bisa melakukannya di sini
        const filePath = path.join(__dirname, '..', 'public', method.file);
        if (fs.existsSync(filePath)) {
            fs.unlinkSync(filePath); // Hapus file dari server
        }

        return res.status(200).json({ status: true, message: 'Metode pembayaran berhasil dihapus' });
    } catch (error) {
        console.error("Error in deletePaymentMethod:", error);
        return res.status(500).json({ status: false, message: 'Terjadi kesalahan server', error: error.message });
    }
};
