class Person
  attr_reader :first_name, :last_name, :email, :state

  def initialize(data)
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @email = data[:email]
    @state = data[:state]
  end
end
