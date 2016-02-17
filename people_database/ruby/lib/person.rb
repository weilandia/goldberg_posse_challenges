class Person

  attr_reader :first_name, :last_name, :email, :state

  def initialize(person_hash)
    @first_name = person_hash[:first_name]
    @last_name = person_hash[:last_name]
    @email = person_hash[:email]
    @state = person_hash[:state]
  end

end
