const express = require('express')
const router = express.Router()
const AccountingEntryController = require('../controllers/AccountingEntryController')

router.get('/list', AccountingEntryController.list)
router.post('/create', AccountingEntryController.create)

module.exports = router