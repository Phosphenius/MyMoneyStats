module.exports = (sequelize, DataTypes) => {
    const AccountingEntry = sequelize.define('AccountingEntry', {
        amount: {
            type: DataTypes.DECIMAL,
            allowNull: false,
            defaultValue: .0
        },
        title: {
            type: DataTypes.STRING,
            allowNull: false,
            defaultValue: ''
        },
        date: {
            type: DataTypes.DATEONLY
        },
        deleted: {
            type: DataTypes.BOOLEAN,
            defaultValue: false,
            allowNull: false
        }
    })

    AccountingEntry.associate = function (models) {
        AccountingEntry.belongsToMany(models.Tag, { through: 'AccountingEntryHasTag' })
    }

    return AccountingEntry
}