# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!(
  [
    { title: 'Ruby' },
    { title: 'HTML' }
  ]
)

users = User.create!(
  [
    { email: 'admin6@email.com', password: '123456', type: 'Admin', first_name: 'admin', last_name: 'admin' }
  ]
)

tests = Test.create!(
  [
    { title: 'Ruby', category_id: categories[0].id, level: 1, author_id: users[0].id },
    { title: 'HTML', category_id: categories[1].id, level: 0, author_id: users[0].id }
  ]
)

questions = Question.create!(
  [
    { body: 'How do you insert a comment in HTML?', test_id: tests[0].id },
    { body: 'Can a single text link point to 2 different web pages?', test_id: tests[0].id },
    { body: 'How do you insert a comment in Ruby?', test_id: tests[1].id },
    { body: 'Who is the creator of Ruby', test_id: tests[1].id }
  ]
)

answers = Answer.create!(
  [
    { body: '<!-- comment -->', question_id: questions[0].id },
    { body: '//comment', question_id: questions[0].id },
    { body: '#comment', question_id: questions[2].id },
    { body: '/* comment */', question_id: questions[2].id },
    { body: 'yes', question_id: questions[1].id },
    { body: 'no', question_id: questions[1].id },
    { body: 'Matz', question_id: questions[3].id },
    { body: 'Stroustrup', question_id: questions[3].id }
  ]
)
