require("dotenv").config();
const nodemailer = require("nodemailer");

(async () => {
    const transporter = nodemailer.createTransport({
        host: process.env.EMAIL_HOST,
        port: 587,
        secure: false,
        auth: {
            user: process.env.EMAIL_USER,
            pass: process.env.EMAIL_PASS,
        },
        tls: {
            rejectUnauthorized: false,
        },
    });

    try {
        let info = await transporter.sendMail({
            from: `"Kasir GrebegSuro" <${process.env.EMAIL_USER}>`,
            to: "emailmu@gmail.com",
            subject: "Test Email",
            html: "<h1>Ini email test</h1>",
        });

        console.log("Email terkirim:", info.messageId);
    } catch (err) {
        console.error("Gagal kirim email:", err);
    }
})();
