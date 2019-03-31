const path = require('path')

module.exports = {
    port: process.env.PORT || 4000,
    db: {
      database: process.env.DB_NAME || 'MMS',
      user: process.env.DB_USER || 'MMS',
      password: process.env.DB_PASS || 'MMS',
      options: {
        logging: false,
        dialect: process.env.DIALECT || 'sqlite',
        host: process.env.HOST || 'localhost',
        storage: path.resolve(__dirname, '../../MMS.sqlite')
      }
    },
    'secret': 'mevnsecure'
  }