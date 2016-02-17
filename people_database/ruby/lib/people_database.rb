require_relative 'person.rb'
require 'pry'

class PeopleDatabase
  attr_accessor :people

  def initialize
    @people = []
  end

  def add(data)
    @people << Person.new(data)
  end

  def remove(email)
    @people.delete_if { |person| person.email == email }
  end

  def all_people(state)
    chosen_people = []
    @people.each { |person| chosen_people << person if person.state == state }
    chosen_people
  end

end
