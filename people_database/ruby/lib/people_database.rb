require_relative 'person.rb'
require 'pry'

class PeopleDatabase
  attr_reader :people

  def initialize
    @people = []
  end

  def add(data)
    people << Person.new(data)
  end
end
