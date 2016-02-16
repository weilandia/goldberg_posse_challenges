require 'test_helper'

class PersonTest < Minitest::Test
  def test_person_has_attributes
    person = Person.new({
            first_name: "Jose",
            last_name:  "Buendia",
            email:      "jose@gmail.com",
            state:      "CA"
            })

    assert_equal "Jose", person.first_name
    assert_equal "Buendia", person.last_name
    assert_equal "jose@gmail.com", person.email
    assert_equal "CA", person.state
  end
end
