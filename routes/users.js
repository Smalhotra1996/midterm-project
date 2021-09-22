/*
 * All routes for Users are defined here
 * Since this file is loaded in server.js into api/users,
 *   these routes are mounted onto /users
 * See: https://expressjs.com/en/guide/using-middleware.html#middleware.router
 */

const express = require('express');
const router  = express.Router();

module.exports = (db) => {
  // users/:user_id/quizzes/new GET - if logged in, take to new quizzes page
  router.get("/:user_id/quizzes/new", (req, res) => {
    res.render("new_quiz");
  });

  // users/:user_id/quizzes GET - goes to user all quizzes page, have all quizzes displayed in table
  router.get('/:user_id/quizzes', (req, res) => {
    
    db.getQuizzesByUserId(1)
      .then(quizzes => {
        // quizzes should be all the quiz that belongs to the user_id
        // given back as an array of objects
        const templateVars = {user_id: 1, quizzes: quizzes};
        // render page that will show all quizzes into table
        res.render("user_quizzes", templateVars);
      })
      .catch(e => res.send(e));
    
  });

  // users/:user_id/quizzes/:quiz_id GET - goes to quiz page with creator access
  router.get('/:user_id/quizzes/:quiz_id', (req, res) => {
    // Guest user for demo
    const user_id = 1;
    // get the quiz info
    const quiz_id = (req.params.quiz_id);
    db.getQuizWithQuizId(quiz_id)
      .then(quiz => {
        // quiz info here to render
        const templateVars = { quiz: quiz, user_id: user_id };
        // page rendering for quiz to be viewed by creator
        res.render('user_quiz', templateVars);
      })
      .catch(e => res.send(e));
    
  });

  // users/:user_id/quizzes/:quiz_id/edit GET - goes to quiz edit page with creator access
  router.get('/:user_id/quizzes/:quiz_id/edit', (req, res) => {
    const user_id = 1;    
    const quiz_id = (req.params.quiz_id);
    db.getQuizWithQuizId(quiz_id)
      .then(quiz => {

        let orderQues = quiz.questions;
        orderQues.sort(function(a, b) {
          let keyA = a.question_id;
          let keyB = b.question_id;
          if (keyA < keyB) return -1;
          if (keyA > keyB) return 1;
          return 0;
        });

        // quiz info here to render
        const templateVars = { quiz: quiz, user_id: user_id };
        // render the page with the fields for edit
        res.render('user_quiz_edit', templateVars);
          
      })
      .catch(e => res.send(e));
    
  });

  return router;
};
