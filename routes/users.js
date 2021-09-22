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

  return router;
};
