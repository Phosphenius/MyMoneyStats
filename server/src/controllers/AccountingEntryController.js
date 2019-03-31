const { AccountingEntry } = require('../models')

module.exports = {
    async list (req, res) {
        try {
            res.send(await AccountingEntry.findAll())
        } catch (err) {
            res.status(500).send({
                error: 'Unable to retrieve accounting entries'
            })
        }
    },
    async create (req, res) {
        try {
            res.send(await AccountingEntry.create(req.body))
        } catch (err) {
            res.status(500).send({
                error: 'Unable to create accounting entry'
            })
        }
    }
}