const questionModel = require('../models/question');

function getAllQuestions(req, res) {
  questionModel.getAllQuestions((error, results) => {
    if (error) {
      console.error(error);
      return res.sendStatus(500);
    }
    res.json(results);
  });
}

module.exports = {
  getAllQuestions,
};