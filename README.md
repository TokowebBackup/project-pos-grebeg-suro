# POS Grebeg Suro

Sistem Point of Sale (POS) untuk brand Grebeg Suro. Aplikasi ini terdiri dari *backend* yang dibangun dengan ExpressJS dan *frontend* dengan ReactJS.

## Fitur Utama

*   Penjualan
*   Manajemen Produk
*   Laporan Penjualan
*   Manajemen Pengguna
*   Integrasi Pembayaran (Midtrans)
*   Cetak Struk (Thermal Printer)

## Teknologi yang Digunakan

*   **Frontend:**
    *   ReactJS
    *   Redux
    *   Material UI
    *   Axios
    *   React Router
    *   dan lain-lain (lihat package.json *frontend*)
*   **Backend:**
    *   ExpressJS
    *   Sequelize (ORM)
    *   MySQL/PostgreSQL
    *   Midtrans Client
    *   dan lain-lain (lihat package.json *backend*)

## Instalasi

### Persiapan

1.  Pastikan Anda telah menginstal Node.js dan npm (Node Package Manager) di sistem Anda.
2.  Siapkan database MySQL atau PostgreSQL.

### Backend

1.  Masuk ke direktori `backend`.
    ```bash
    cd backend
    ```
2.  Instal *dependencies*.
    ```bash
    npm install
    ```
3.  Konfigurasi *environment variables* (misalnya, buat file `.env`):
    ```
    DB_HOST=localhost
    DB_NAME=pos_grebeg_suro
    DB_USER=user
    DB_PASS=password
    PORT=5000
    SESSION_SECRET=your-secret-key
    MIDTRANS_SERVER_KEY=your-midtrans-server-key
    MIDTRANS_CLIENT_KEY=your-midtrans-client-key
    ```
4.  Jalankan aplikasi *backend*.
    ```bash
    npm start
    ```  

Menjalankan Backend dengan PM2

Untuk menjalankan backend secara background dan tetap aktif setelah server direstart, gunakan PM2:

    Instal PM2 (jika belum):  
    ```
    npm install -g pm2
    ```
    Jalankan backend dengan PM2:

    ```
    pm2 start index.js --name pos-backend
    ```  

Simpan konfigurasi agar otomatis dijalankan saat server reboot:

```
pm2 save
pm2 startup
```  

Perintah tambahan:

    Melihat status proses:
```
pm2 status
```

Me-restart backend:
```
pm2 restart pos-backend
```

Menghentikan backend:

pm2 stop pos-backend

### Frontend

1.  Masuk ke direktori `frontend`.
    ```bash
    cd frontend
    ```
2.  Instal *dependencies*.
    ```bash
    npm install
    ```
3.  Konfigurasi *environment variables* (misalnya, buat file `.env` atau `.env.local`):
    ```
    REACT_APP_BACKEND_URL=http://localhost:5000
    ```
4.  Jalankan aplikasi *frontend*.
    ```bash
    npm start
    ```

## Konfigurasi Database

*   Aplikasi ini menggunakan Sequelize sebagai ORM. Anda perlu mengkonfigurasi koneksi database di file konfigurasi Sequelize atau melalui *environment variables*.
*   Pastikan database yang Anda tentukan sudah dibuat.
*   Jalankan migrasi Sequelize untuk membuat tabel-tabel yang diperlukan.

## Konfigurasi Midtrans

*   Aplikasi ini terintegrasi dengan Midtrans untuk pemrosesan pembayaran.
*   Anda perlu memiliki akun Midtrans dan mengkonfigurasi *server key* dan *client key* di *environment variables*.

## Environment Variables

Berikut adalah daftar *environment variables* yang perlu Anda konfigurasi:

*   **Backend:**
    *   `DB_HOST`: Host database.
    *   `DB_NAME`: Nama database.
    *   `DB_USER`: Username database.
    *   `DB_PASS`: Password database.
    *   `PORT`: Port untuk menjalankan server backend.
    *   `SESSION_SECRET`: Secret key untuk session.
    *   `MIDTRANS_SERVER_KEY`: Server key Midtrans.
    *   `MIDTRANS_CLIENT_KEY`: Client key Midtrans.
*   **Frontend:**
    *   `REACT_APP_BACKEND_URL`: URL *backend*.

## Struktur Direktori
```
pos-grebeg-suro/
├── backend/          # Backend ExpressJS
│   ├── index.js      # Entry point aplikasi backend
│   ├── models/       # Model Sequelize
│   ├── controllers/  # Controller ExpressJS
│   ├── routes/       # Routes ExpressJS
│   ├── config/       # Konfigurasi database, dll.
│   └── package.json  # Dependencies backend
│
└── frontend/         # Frontend ReactJS
    ├── src/          # Source code ReactJS
    │   ├── components/ # Komponen-komponen React
    │   ├── pages/      # Halaman-halaman aplikasi
    │   ├── App.js      # Komponen utama aplikasi
    │   └── index.js    # Entry point aplikasi frontend
    ├── public/       # File-file statis
    └── package.json  # Dependencies frontend
```  

### First remove all table if exists table is error  
```
SELECT CONCAT('DROP TABLE IF EXISTS `', table_name, '`;') 
FROM information_schema.tables 
WHERE table_schema = 'databasekamu';

mysql -u grebeg_suro -p databasekasirbaru < /home/hallaw/databasekasirbaru.sql
```

## Lisensi

#### Developed By [Tokoweb.co](https://tokoweb.co)

[MIT](LICENSE)