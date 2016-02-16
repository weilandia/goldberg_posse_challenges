class Person
  attr_reader :first_name, :last_name, :email, :state

  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @email = args[:email]
    @state = args[:state]
  end
end
