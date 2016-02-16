class PeopleDatabase
  attr_accessor :people
  def initialize(people_arr = [])
    @people = people_arr
  end

  def add(person_args)
    people << Person.new(person_args)
  end

  def remove(email)
    emails = people.map(&:email)
    index = emails.index(email)
    people.delete_at(index)
  end

  def collect_state(state)
    people.select { |p| p.state == state }
  end

  def state_count(state)
    collect_state(state).count
  end

  def emails
    people.map(&:email).join(", ")
  end
end
