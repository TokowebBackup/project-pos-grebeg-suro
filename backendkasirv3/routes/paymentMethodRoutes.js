// routes/paymentMethodRoutes.js
const express = require('express');
const { getAllPaymentMethods, addPaymentMethod, updatePaymentMethod, deletePaymentMethod, uploadQrisImage } = require('../controller/paymentMethodController');
const { verifyUser, superAdminOnly } = require('../middleware/userMiddleware');

const router = express.Router();

router.get('/paymentmethods', verifyUser, getAllPaymentMethods);
router.post('/addpaymentmethod', verifyUser, uploadQrisImage, addPaymentMethod);
router.put('/paymentmethods/:id', verifyUser, uploadQrisImage, updatePaymentMethod);
router.delete('/paymentmethods/:id', verifyUser, deletePaymentMethod);


module.exports = router;
