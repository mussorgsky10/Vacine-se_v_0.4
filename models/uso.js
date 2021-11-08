'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Uso extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Uso.belongsTo(models.Vacinado);
    }
  };
  Uso.init({
    userId: DataTypes.INTEGER,
    nome: DataTypes.STRING,
    cracha: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Uso',
  });
  return Uso;
};