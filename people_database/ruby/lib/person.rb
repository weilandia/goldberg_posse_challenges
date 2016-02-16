class Person

  def initialize(first_name)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @state = state
  end

  def person(arguments)
    {first_name: @first_name, last_name: @last_name, email: @email, state: @state}
  end




end
