require 'test_helper'

class PeopleDatabaseTest < Minitest::Test
  include TestData
  def test_db_can_add_people
    db = PeopleDatabase.new
    person_hash = {
            first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"
            }

    db.add(person_hash)

    assert_equal "Jose", db.people.first.first_name
  end

  def test_remove_people_based_on_email
    people_database = gather_data
    require "pry"; binding.pry
    people_database.remove("segundo@gmail.com")

    assert_equal 5, people_database.people.length
  end

  def test_return_all_people_given_state
    people_database = gather_data
    ca = people_database.collect_state("CA")

    assert_equal 2, ca.length
    assert_equal ["Jose", "Aureliano"], ca.map(&:first_name)
  end

  def test_count_all_people_given_state
    people_database = gather_data
    ca = people_database.state_count("CA")

    assert_equal 2, ca
  end

  def test_return_comma_separated_string_of_all_emails
    people_database = gather_data
    emails = people_database.emails

    assert_equal "jose@gmail.com, aureliano@gmail.com, arcadio@gmail.com, segundo@gmail.com, ursula@gmail.com, pilar@gmail.com", emails
  end
end
