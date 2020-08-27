# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Category.destroy_all
Task.destroy_all
Email.destroy_all

  3.times do
    email = Email.new(object: Faker::Book.title,
                         body: Faker::Lorem.paragraph(sentence_count: 10),
                         read: false)
    email.save
  end




  