const express = require('express')
const { getAllPaymentMethods, addPaymentMethod, updatePaymentMethod } = require('../controller/paymentMethodController')
const { verifyUser, superAdminOnly } = require('../middleware/userMiddleware')

const router = express.Router()

// Ambil semua metode pembayaran (boleh untuk admin)
router.get('/paymentmethods', verifyUser, getAllPaymentMethods);

router.post('/addpaymentmethod', verifyUser, addPaymentMethod)

// Edit metode pembayaran (khusus super admin)
router.put('/paymentmethods/:id', verifyUser, updatePaymentMethod);


module.exports = router