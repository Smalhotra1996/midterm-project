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
  return {getQuizzes};
};


