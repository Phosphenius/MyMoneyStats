const express = require('express')
const router = express.Router()
const TagController = require('../controllers/TagController')

router.get('/list', TagController.list)
router.post('/create', TagController.create)

module.exports = router