const Transaksi = require('../models/transaksiModel');

exports.getCustomerList = async (req, res) => {
    try {
        // Ambil data unik customer_name dan customer_phone saja dari transaksis
        // supaya customer yang sama tidak duplikat, kita gunakan GROUP BY di raw query atau distinct di sequelize.

        // Menggunakan raw query dengan sequelize:
        const customers = await Transaksi.sequelize.query(
            `SELECT DISTINCT customer_name, customer_phone FROM transaksis WHERE customer_name IS NOT NULL AND customer_phone IS NOT NULL`,
            {
                type: Transaksi.sequelize.QueryTypes.SELECT
            }
        );

        res.status(200).json({
            status: 200,
            message: 'Customer list retrieved successfully',
            data: customers
        });
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};
