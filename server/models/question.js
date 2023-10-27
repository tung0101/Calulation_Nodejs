const db = require('./db'); // Kết nối đến cơ sở dữ liệu

function getAllQuestions(callback) {
    const query = 'SELECT * FROM questions';
  db.query(query, callback);
  }
  
  module.exports = {
    getAllQuestions,
  };