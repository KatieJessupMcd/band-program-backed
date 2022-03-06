# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

uncanny_valley_high = School.create!(
  name: "Uncanny Valley High School",
  lowest_grade: 9,
  highest_grade: 12
)

malcolm_middle = School.create!(
  name: "Malcolm Middle School",
  lowest_grade: 5,
  highest_grade: 8
)

Student.create!(
  [
    {
      first_name: "Nicole",
      last_name: "Byer",
      school: uncanny_valley_high
    },
    {
      first_name: "Sarah",
      last_name: "Millican",
      school: uncanny_valley_high
    },
    {
      first_name: "Jane",
      last_name: "Doe",
      school: uncanny_valley_high
    },
    {
      first_name: "Bob",
      last_name: "Smith",
      school: malcolm_middle
    },
    {
      first_name: "Amy",
      last_name: "Poelher",
      school: malcolm_middle
    },
    {
      first_name: "Tina",
      last_name: "Fey",
      school: malcolm_middle
    },
  ]
)
