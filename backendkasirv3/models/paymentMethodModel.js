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
    file: { // Pastikan ini adalah nama field yang benar
        type: DataTypes.STRING,
        allowNull: false,
    },
    isDefault: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
    },
}, {
    sequelize: db,
    timestamps: true,
    modelName: 'PaymentMethod',
    tableName: 'paymentmethods',
});

module.exports = paymentMethodModel;
