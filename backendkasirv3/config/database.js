const { Sequelize } = require('sequelize');

const db = new Sequelize('databasekasirbaru', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  timezone: '+07:00',
  logging: console.log,
});

module.exports = db;

//db lama 'kasirkujs'

//deploy
// Hostname:
// localhost
// Database:
// brabsenm_kasir
// Username:
// brabsenm_kasir
// Password:
// E2NUUQGaZWkQPneWQhQ4

// deployv2
// Hostname:
// localhost
// Database:
// brabsenm_kasirv2
// Username:
// brabsenm_kasirv2
// Password:
// eUMVUMNhtjfyXwtCDww8