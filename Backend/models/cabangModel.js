const Sequelize = require('sequelize');
const db = require('../config/database');
const User = require('./userModel');

const { DataTypes } = Sequelize
const Cabang = db.define('Cabang', {
  uuid: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  namacabang: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  alamat: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  koordinat: {
    type: DataTypes.STRING,
    allowNull: true,
  },
}, {
  timestamps: true,
  tableName: 'cabangs',
});

module.exports = Cabang;

// Cabang.hasMany(User, { foreignKey: 'cabangId' });