require_relative 'person.rb'

class PeopleDatabase

  attr_reader :people

  def initialize
    @people = []
  end

  def add(person)
    @people << Person.new(person_hash)
  end
end
