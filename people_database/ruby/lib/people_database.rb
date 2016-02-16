require_relative 'person'
require 'pry'

class PeopleDatabase
attr_reader :people
  def initialize
    people = []
  end

  def add(data)
    people << Person.new(data)
  end
end
binding.pry
#pd.add({ first_name: "Ilana", last_name: "Corson", email: "ilana@gmail.com, state: "CO"})
