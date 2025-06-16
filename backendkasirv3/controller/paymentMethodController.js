// controllers/paymentMethodController.js
const PaymentMethod = require('../models/paymentMethodModel');

// Ambil semua metode pembayaran
exports.getAllPaymentMethods = async (req, res) => {
    try {
        const methods = await PaymentMethod.findAll();
        return res.status(200).json({ status: true, data: methods });
    } catch (error) {
        return res.status(500).json({ status: false, message: error.message });
    }
};

exports.addPaymentMethod = async (req, res) => {
    const { bankName, accountNumber, isDefault } = req.body;

    try {
        const paymentMethod = await PaymentMethod.create({ bankName, accountNumber, isDefault });
        return res.status(201).json({ status: true, data: paymentMethod });
    } catch (error) {
        return res.status(500).json({ status: false, message: error.message });
    }
};

// Edit metode pembayaran berdasarkan ID
exports.updatePaymentMethod = async (req, res) => {
    const { id } = req.params;
    const { bankName, accountNumber, isDefault } = req.body; // Ambil isDefault dari body

    try {
        const method = await PaymentMethod.findByPk(id);
        if (!method) {
            return res.status(404).json({ status: false, message: 'Metode pembayaran tidak ditemukan' });
        }

        method.bankName = bankName || method.bankName;
        method.accountNumber = accountNumber || method.accountNumber;
        method.isDefault = isDefault !== undefined ? isDefault : method.isDefault; // Update isDefault jika ada

        await method.save();

        return res.status(200).json({ status: true, message: 'Metode pembayaran diperbarui', data: method });
    } catch (error) {
        return res.status(500).json({ status: false, message: error.message });
    }
};
