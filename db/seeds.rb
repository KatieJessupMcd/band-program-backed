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
      grade: 9, 
      school: uncanny_valley_high
    },
    {
      first_name: "Sarah",
      last_name: "Millican",
      grade: 9,
      school: uncanny_valley_high
    },
    {
      first_name: "Jane",
      last_name: "Doe",
      grade: 9, 
      school: uncanny_valley_high
    },
    {
      first_name: "Bob",
      last_name: "Ross",
      grade: 10, 
      school: uncanny_valley_high
    },
    {
      first_name: "Rachel",
      last_name: "Riley",
      grade: 10,
      school: uncanny_valley_high
    },
    {
      first_name: "Jimmy",
      last_name: "Carr",
      grade: 10, 
      school: uncanny_valley_high
    },
    {
      first_name: "Yoshi",
      last_name: "Egg",
      grade: 11, 
      school: uncanny_valley_high
    },
    {
      first_name: "Princess",
      last_name: "Peach",
      grade: 11,
      school: uncanny_valley_high
    },
    {
      first_name: "Rick",
      last_name: "Roll",
      grade: 11, 
      school: uncanny_valley_high
    },
    {
      first_name: "Bob",
      last_name: "Marley",
      grade: 12, 
      school: uncanny_valley_high
    },
    {
      first_name: "Joe",
      last_name: "Exotic",
      grade: 12,
      school: uncanny_valley_high
    },
    {
      first_name: "Pam",
      last_name: "Anderson",
      grade: 12, 
      school: uncanny_valley_high
    },
    {
      first_name: "Abby",
      last_name: "Road",
      grade: 6, 
      school: malcolm_middle
    },
    {
      first_name: "John",
      last_name: "Carpenter",
      grade: 6,
      school: malcolm_middle
    },
    {
      first_name: "Guster",
      last_name: "Wind",
      grade: 6,
      school: malcolm_middle
    },
    {
      first_name: "Parks",
      last_name: "Andrec",
      grade: 7,
      school: malcolm_middle
    },
    {
      first_name: "Whoseline",
      last_name: "Isitanyway",
      grade: 7,
      school: malcolm_middle
    },
    {
      first_name: "Stinky",
      last_name: "Pete",
      grade: 8,
      school: malcolm_middle
    },
    {
      first_name: "Jack",
      last_name: "Benimble",
       grade: 8,
      school: malcolm_middle
    },
    {
      first_name: "Jack",
      last_name: "Bequick",
      grade: 8,
      school: malcolm_middle
    },
    {
      first_name: "Lego",
      last_name: "Myeggo",
      grade: 8,
      school: malcolm_middle
    },
  ]
)

Ensemble.create(
  [
    {
      name: "Concert Band", 
      school: uncanny_valley_high
    }, 
    {
      name: "Wind Ensemble", 
      school: uncanny_valley_high
    }, 
    {
      name: "Jazz Band", 
      school: uncanny_valley_high
    }, 
    {
      name: "Beginner Band", 
      school: malcolm_middle
    }, 
    {
      name: "Intermediate Ensemble", 
      school: malcolm_middle
    }, 
    {
      name: "Advanced Band", 
      school: malcolm_middle
    }, 
    
  ]
)
