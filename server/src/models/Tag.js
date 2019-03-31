const bcrypt = require('bcrypt')

module.exports = (sequelize, DataTypes) => {
  const Tag = sequelize.define('Tag', {
    title: {
      type: DataTypes.STRING,
      allowNull: false,
      defaultValue: ''
    },
    deleted: {
      type: DataTypes.BOOLEAN,
      defaultValue: false,
      allowNull: false
    }
  })

  Tag.associate = function (models) {
      Tag.belongsToMany(models.AccountingEntry, { through: 'AccountingEntryHasTag' })
  }

  return Tag
}