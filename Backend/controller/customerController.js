const { Op } = require('sequelize');
const Transaksi = require('../models/transaksiModel');
const User = require('../models/userModel');
const Cabang = require('../models/cabangModel');

exports.getCustomerList = async (req, res) => {
    try {
        // Ambil data unik customer_name dan customer_phone saja dari transaksis
        // supaya customer yang sama tidak duplikat, kita gunakan GROUP BY di raw query atau distinct di sequelize.

        // Menggunakan raw query dengan sequelize:
        const customers = await Transaksi.findAll({
            attributes: [
                'customer_name',
                'customer_phone',
                'useruuid'
            ],
            where: {
                customer_name: { [Op.not]: null },
                customer_phone: { [Op.not]: null }
            },
            include: [
                {
                    model: User,
                    attributes: ['username'],
                    include: [
                        {
                            model: Cabang,
                            attributes: ['namacabang']
                        }
                    ]
                }
            ],
            group: ['customer_name', 'customer_phone', 'useruuid']
        });


        console.log(customers);

        res.status(200).json({
            status: 200,
            message: 'Customer list retrieved successfully',
            data: customers
        });
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};
