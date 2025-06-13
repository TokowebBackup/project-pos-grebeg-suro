require("dotenv").config();
const nodemailer = require("nodemailer");

const transporter = nodemailer.createTransport({
    host: process.env.EMAIL_HOST,
    port: parseInt(process.env.EMAIL_PORT) || 587,
    secure: false, // pakai STARTTLS
    auth: {
        user: process.env.EMAIL_USER,
        pass: process.env.EMAIL_PASS,
    },
    tls: {
        rejectUnauthorized: false,
    },
});

console.log(process.env.EMAIL_USER)
console.log(process.env.EMAIL_PASS)
console.log(process.env.EMAIL_HOST)

const sendInvoiceEmail = async (to, subject, htmlContent) => {
    await transporter.sendMail({
        from: `"Kasir GrebegSuro" <${process.env.EMAIL_USER}>`,
        to,
        subject,
        html: htmlContent,
    });
};

module.exports = { sendInvoiceEmail };
