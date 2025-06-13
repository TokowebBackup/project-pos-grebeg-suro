# POS Grebeg Suro V3

Branch `v3` adalah versi terbaru dari aplikasi Kasir POS untuk brand **Grebeg Suro**. Pada versi ini, terdapat sejumlah peningkatan fitur dan tampilan, menjadikannya lebih modern dan fungsional.

## ✨ Pembaruan di Versi V3

- ✉️ **Invoice via Email**  
  Pengguna dapat mengirim invoice ke pelanggan melalui email secara otomatis.
  
- 📱 **Pembayaran via QRIS Payment Gateway**  
  Integrasi dengan QRIS memungkinkan transaksi cashless yang lebih cepat dan mudah.

- 🎨 **Update Tampilan**  
  Desain antarmuka diperbarui dengan penyesuaian font dan style untuk pengalaman pengguna yang lebih baik.

---

## Fitur Utama

* Penjualan
* Manajemen Produk
* Laporan Penjualan
* Manajemen Pengguna
* Integrasi Pembayaran (Midtrans & QRIS)
* Cetak Struk (Thermal Printer)
* Kirim Invoice Email ke Pelanggan

## Teknologi yang Digunakan

* **Frontend:**
  * ReactJS
  * Redux
  * Material UI
  * Axios
  * React Router
  * dan lainnya (lihat `package.json` di frontend)

* **Backend:**
  * ExpressJS
  * Sequelize (ORM)
  * MySQL/PostgreSQL
  * Midtrans & QRIS Payment Integration
  * Nodemailer
  * dan lainnya (lihat `package.json` di backend)

---

## Instalasi

### Persiapan

1. Pastikan Anda telah menginstal **Node.js** dan **npm**.
2. Siapkan **database** (MySQL atau PostgreSQL).

### Backend

### First remove all table if exists table is error  
```
SELECT CONCAT('DROP TABLE IF EXISTS `', table_name, '`;') 
FROM information_schema.tables 
WHERE table_schema = 'databasekamu';

mysql -u grebeg_suro -p databasekasirbaru < /home/hallaw/databasekasirbaru.sql
```

```bash
cd backend
npm install
