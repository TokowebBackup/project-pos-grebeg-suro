const { Sequelize } = require('sequelize');

const db = new Sequelize('databasekasirbaru', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  timezone: '+07:00',
  logging: console.log,
});

module.exports = db;



