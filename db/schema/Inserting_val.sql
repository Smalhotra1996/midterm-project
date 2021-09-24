INSERT INTO users (
  name, email, password)
  VALUES (
  'Devin Sanders', 'tristanjacobs@gmail.com', '1234');
  INSERT INTO users (
  name, email, password)
  VALUES (
  'Iva Harrison', 'allisonjackson@mail.com', 'abcd');
  INSERT INTO users (
  name, email, password)
  VALUES (
  'Lloyd Jefferson', 'asherpoole@gmx.com', '1A2B');
  INSERT INTO users (
  name, email, password)
  VALUES (
  'Dale Coleman', 'michaelgray@mail.com', '5WTDS');
  INSERT INTO users (
  name, email, password)
  VALUES (
  'Alejandro Osborne', 'ariaatkinson@outlook.com', 'AGFDG');

  INSERT INTO quizzes (
  owner_id, title, description, visibility, photo_url, category)
  VALUES (3, 'Basic Math !', 'Basic addition and subtraction', 'TRUE', 'https://i.imgur.com/Ez7g45q.png', 'Education');
  INSERT INTO quizzes (
  owner_id, title, description, visibility, photo_url, category)
  VALUES (
  2, 'Fun Math for kids!', 'Basic multiplication', 'TRUE', 'https:
//encrypted-tbn0.gstatic.com/images?q=
tbn:
ANd9GcRaixULGZCRgSsry-Ha8chS1q4DUPaIUew6JQ&usqp=CAU', 'Education');
  INSERT INTO quizzes (
  owner_id, title, description, visibility, photo_url, category)
  VALUES (
  3, 'SCIENCE', 'science for kids!', 'TRUE', 'https://i.imgur.com/D0Iz7.jpeg', 'Education');
  INSERT INTO quizzes ( --quiz 4
  owner_id, title, description, visibility, photo_url, category)
  VALUES (
  15, 'Animal Trivia', 'So you think you know about animal?', 'FALSE', 'https://i.imgur.com/yiNa01J.jpeg', 'Education');

  INSERT INTO questions (quiz_id, question)
  VALUES (1, '3 + 7 = ?');
  INSERT INTO questions (quiz_id, question)
  VALUES (1, '10 - 0 = ?');
  INSERT INTO questions (quiz_id, question)
  VALUES (1, '2 + 2 = ?');
  INSERT INTO questions (quiz_id, question)
  VALUES (1, '16 - 7 = ?');
  INSERT INTO questions (quiz_id, question)
  VALUES (2, '3 X 3 = ?');

  INSERT INTO answers (
  question_id, value, is_correct)
  VALUES (1, '9', false);
  INSERT INTO answers (
  question_id, value, is_correct)
  VALUES (1, '8', false);
  INSERT INTO answers (
  question_id, value, is_correct)
  VALUES (1, '11', false);
  INSERT INTO answers (
  question_id, value, is_correct)
  VALUES (1, '10', true);
  INSERT INTO answers (
  question_id, value, is_correct)
  VALUES (2, '10', true);

  INSERT INTO attempts (quiz_id, user_id, score)
  VALUES (1, 2, 4);
  INSERT INTO attempts (quiz_id, user_id, score)
  VALUES (1, 3, 3);
  INSERT INTO attempts (quiz_id, user_id, score)
  VALUES (1, 4, 2);
  INSERT INTO attempts (quiz_id, user_id, score)
  VALUES (2, 2, 6);
  INSERT INTO attempts (quiz_id, user_id, score)
  VALUES (2, 3, 5);
  