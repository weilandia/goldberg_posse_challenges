require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/initials'

class InitialsTest < Minitest::Test
  def test_initials_returns_initials
    initials = Initials.new(["Nick", "Weiland"])
    assert_equal "NW", initials.print_first_intials_only
  end
end
