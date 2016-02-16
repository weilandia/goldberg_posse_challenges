$LOAD_PATH.unshift(File.expand_path("../lib", __dir__))

require 'minitest/autorun'
require 'minitest/pride'
require 'person'
require 'people_database'

module TestData
  def gather_data
    person_one = {
            first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"
            }

    person_two = {
            first_name: "Aureliano",
            last_name:  "Buendia",
            email:      "aureliano@gmail.com",
            state:      "CA"
            }

    person_three = {
            first_name: "Jose",
            last_name:  "Arcadio",
            email:      "arcadio@gmail.com",
            state:      "UT"
            }

    person_four = {
            first_name: "Aureliano",
            last_name:  "Segundo",
            email:      "segundo@gmail.com",
            state:      "NV"
            }

    person_five = {
            first_name: "Ursula",
            last_name:  "Iguaran",
            email:      "ursula@gmail.com",
            state:      "OR"
            }

    person_six = {
            first_name: "Pilar",
            last_name:  "Ternera",
            email:      "pilar@gmail.com",
            state:      "WA"
            }

    people_database = PeopleDatabase.new
    people_database.add(person_one)
    people_database.add(person_two)
    people_database.add(person_three)
    people_database.add(person_four)
    people_database.add(person_five)
    people_database.add(person_six)
    people_database
  end
end
