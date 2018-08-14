# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(subject: 'Sample Blog', content: 'This is sample content', published_on: '01.02.2018')
Post.create(subject: 'Rails stuff', published_on: '01.02.2018')
Post.create(subject: 'Programming', published_on: '01.02.2018')
