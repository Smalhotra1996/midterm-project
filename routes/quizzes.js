/*
 * All routes for Users are defined here
 * Since this file is loaded in server.js into api/users,
 *   these routes are mounted onto /users
 * See: https://expressjs.com/en/guide/using-middleware.html#middleware.router
 */
const express = require('express');
const router = express.Router();

module.exports = (db) => {
  //displays all the publicly available quizzes
  router.get("/", (req, res) => {
    //const user_id = req.session.user_id;
    db.getQuizzes(10)
      .then(data => {
        const templateVars = {
          //user_id,
          quizzes: data
        };
        res.render("view_quizzes", templateVars);
      })
      .catch(err => {
        res
          .status(500)
          .json({ error: err.message });
      });
  });

  //loads a quiz to be taken by any user/guest
  router.get("/:quiz_id", (req, res) => {
    
    db.getQuizWithQuizId(req.params.quiz_id)
      .then(result => {
        res.render("start_quiz", {quizData: result});
      })
      .catch(err => {
        console.log("query failed: ", err.stack);
        res.statusCode = 404;
        res.render("error", {error: "couldn't retrieve quiz"});
      });
  });

  //load all the attempts for a given quiz
  //with function getAllAttempts(QuizID)
  router.get("/:quiz_id/attempts", (req, res) => {
    
    db.getAllAttempts(req.params.quiz_id)
      .then(results => {
        console.log(results[0]["json_build_object"].quiz[0]);
        results = results[0]["json_build_object"].quiz[0];
        const templateVars = {
          results
        };
        res.render("quiz_results", templateVars);
      })
      .catch(err => {
        console.log("query error", err.stack);
        res.statusCode = "500";
        res.render("error", {error: "Failed to load results", user_id});
      });
  });

  // Submit Quiz and load results
  router.post("/:quiz_id/attempts", (req, res) => {
    
    db.getCorrectAnswer(req.params.quiz_id)
      .then(results => {
        console.log(results);
        let score = 0;
        const numOfQuestions = results.length;

        for (const question of results) {
          if (req.body[question.question_id] == question.answer_id) {
            score++;
          }
        }
        //add attempt to the attempts table
        const attempt = {
          quizId: req.params.quiz_id,
          score
        };
        
        //console.log(attempt.user_id);
        db.addAttempt(attempt)
          .then(result => {
            const url = '/quizzes/' + result.quiz_id + '/attempts/' + result.id;
            res.redirect(url);
          })
          .catch(err => {
            console.log("failed to add attempt", err.stack);
          });
      })
      .catch(err => {
        console.log("query error", err.stack);
      });
  });

  //load the results for a given quiz-attempt
  router.get("/:quiz_id/attempts/:attempt_id", (req, res) => {
    
    db.getAttempt(req.params.attempt_id) // get attempt info
      .then(results => {
        if (results && req.params.quiz_id == results.quiz_id && req.params.attempt_id == results.id) { // if attempt exist and quiz_id match attempt's quiz
          let percentage = results.score / results.question_amount;
          const templateVars = {percentage: percentage, score: results.score, quiz_id: results.quiz_id, id: results.id, numOfQuestions: results.question_amount, name: results.user, title: results.quiz_title, matchingQuiz: true};
          console.log(templateVars);
          res.render("view_result", templateVars);
        } else { //if the the attempt is not for quiz or attempt  does not exist
          db.getQuizInfoWithId(req.params.quiz_id)
            .then(resu => {
              let result = resu[0] || {title: undefined};
              if (!results || (result.title && result.visibility)) { //if attempt does not exist or the quiz exist but not public
                const templateVars = {matchingQuiz: false, quiz_id: req.params.quiz_id, title: result.title};
                res.render("view_result", templateVars);
              } else { //all other condition
                const templateVars = {matchingQuiz: false, quiz_id: req.params.quiz_id, title: null};
                res.render("view_result", templateVars);
              }
            });
        }
      });
  });

  return router;
};