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

  def emails
    emails = @people.map { |person| person.email }
    emails.join(", ")
  end

  def state_counts
    state_counts = {}
    @people.each do |person|
      if state_counts[person.state]
        state_counts[person.state] += 1
      else
        state_counts[person.state] = 1
      end
    end
    state_counts
  end

end
