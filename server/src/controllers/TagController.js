const { Tag } = require('../models')

module.exports = {
    async list (req, res) {
        try {
            res.send(await Tag.findAll())
        } catch (err) {
            res.status(500).send({
                error: 'Unable to retrieve tag entries'
            })
        }
    },
    async create (req, res) {
        try {
            res.send(await Tag.create(req.body))
        } catch (err) {
            res.status(500).send({
                error: 'Unable to create tag entry'
            })
        }
    }
}