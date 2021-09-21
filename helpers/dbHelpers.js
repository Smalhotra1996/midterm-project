/*
 * All helper functions for Database access are defined here
 */
module.exports = (db) => {
  // fetches most popular public quizzes
  const getQuizzes = function(limit = 3, category) {
    let queryString = `
    SELECT quizzes.*, COUNT(attempts.*) AS total_attempt
    FROM quizzes
    LEFT JOIN attempts ON quiz_id = quizzes.id
    WHERE visibility = true`;
    if (category) {
      queryString += `WHERE category LIKE '%${category}%'`;
    }
    queryString += `
    GROUP BY quizzes.id
    ORDER BY total_attempt DESC
    LIMIT $1
    `;
    return db.query(queryString, [limit])
      .then(res => res.rows)
      .catch(err => {
        console.log(err.message);
      });

  };
<<<<<<< HEAD
  const quetAnswers = function() {
    let queryString  = `
    SELECT  quizzes.title, COUNT(answers.is_correct = 'TRUE')
    FROM answers JOIN questions
    ON  question_id = questions.id
    JOIN quizzes ON quiz_id = quizzes.id
    WHERE question_id=1
    GROUP BY quizzes.title;
    `
  }
  return {getQuizzes};
=======

  // get a quiz by id
  const getQuizWithQuizId = function(quizId) {
    return db.query(`
    WITH ans AS (
      SELECT
      answers.question_id,
        json_agg(
          json_build_object(
            'answer_id', answers.id,
            'answer_value', answers.value,
            'answer_is_correct', answers.is_correct
          )
        ) AS answer
      FROM answers
      JOIN questions ON answers.question_id = questions.id
      JOIN quizzes ON questions.quiz_id = quizzes.id
      where quizzes.id = $1
    GROUP BY answers.question_id
    ), que AS (
      SELECT
        quiz_id,
        json_agg(
          json_build_object(
            'question_id', questions.id,
            'question', questions.question,
            'answers', ans.answer
          )
        ) AS question
      FROM questions
      JOIN ans ON questions.id = question_id
      GROUP BY quiz_id
    )
    SELECT
      json_build_object(
        'quiz', json_agg(
          json_build_object(
            'creator_id', users.id,
            'creator', users.name,
            'quiz_id', quizzes.id,
            'title', quizzes.title,
            'description', quizzes.description,
            'category', quizzes.category,
            'visibility', quizzes.visibility,
            'photo_url', quizzes.photo_url,
            'questions', que.question
          )
        )
      ) quizzes
    FROM quizzes
    JOIN que ON quizzes.id = quiz_id
    JOIN users ON owner_id = users.id;
    ;`, [quizId])
      .then(res => res.rows[0].quizzes.quiz[0]);
  }; //return something similar to JSON
  return {getQuizzes,
    getQuizWithQuizId};
>>>>>>> feature/start-quiz
};


