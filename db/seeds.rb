# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = [
    {
        username:                   "user1",
        email:                      "user1@gmail.com",
        first_name:                 "user",
        last_name:                  "one",
        middle_name:                "M",
        gender:                     "Male",
        date_of_birth:              "01/03/1990",
        birth_place:                "Somalia",
        primary_phone_number:       "944822",
        secondary_phone_number:     "944822",
        password:                   "123456789",
        password_confirmation:      "123456789"
    },
    {
        username:                   "user2",
        email:                      "user2@gmail.com",
        first_name:                 "user",
        last_name:                  "two",
        middle_name:                "M",
        gender:                     "Male",
        date_of_birth:              "01/03/1990",
        birth_place:                "Somalia",
        primary_phone_number:       "944822",
        secondary_phone_number:     "944822",
        password:                   "123456789",
        password_confirmation:      "123456789"
    },
    {
        username:                   "user3",
        email:                      "user3@gmail.com",
        first_name:                 "user",
        last_name:                  "three",
        middle_name:                "M",
        gender:                     "Male",
        date_of_birth:              "01/03/1990",
        birth_place:                "Somalia",
        primary_phone_number:       "944822",
        secondary_phone_number:     "944822",
        password:                   "123456789",
        password_confirmation:      "123456789"
    },

]

User.create!(users)