// models/paymentMethodModel.js
const { Model, DataTypes } = require('sequelize');
const db = require('../config/database');

class paymentMethodModel extends Model { }

paymentMethodModel.init({
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    bankName: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    accountNumber: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    isDefault: { // Tambahkan kolom ini
        type: DataTypes.BOOLEAN,
        defaultValue: false, // Default value untuk isDefault
    },
}, {
    sequelize: db,
    timestamps: true,        // createdAt and updatedAt handled automatically
    modelName: 'PaymentMethod',
    tableName: 'paymentmethods',
});

module.exports = paymentMethodModel;
