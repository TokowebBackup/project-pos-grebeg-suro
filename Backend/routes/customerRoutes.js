const express = require('express');
const { getCustomerList } = require('../controller/customerController');
const { verifyUser } = require('../middleware/userMiddleware');

const router = express.Router();

router.get('/customers', verifyUser, getCustomerList);

module.exports = router;
