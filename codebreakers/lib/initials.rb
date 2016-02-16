class Initials
  attr_accessor :words

  def initialize(args)
    @words = args
  end

  def print_first_intials_only
    string_of_initials = words.map do |word|
      word[0].upcase if word
    end
    p string_of_initials.join('')
  end
end

initials = Initials.new(ARGV)
initials.print_first_intials_only
