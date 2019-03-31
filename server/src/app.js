const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const {sequelize} = require('./models')
const app = express()
const settings = require('./config/settings')
const accountingEntry = require('./routes/AccountingEntry')
const tag = require('./routes/Tag')

app.use(bodyParser.json())
app.use(cors())
app.use('/api/entry', accountingEntry)
app.use('/api/tag', tag)

sequelize.sync({ force: true })
  .then(() => {
    app.listen(settings.port)
    console.log(`Server started on port ${settings.port}`)
  })
