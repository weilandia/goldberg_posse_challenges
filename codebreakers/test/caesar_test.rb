require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/caesar'

class CaesarTest < Minitest::Test
  def test_caesar_returns_encryption
    message = Caesar.new(["1", "Hello", "Ilana"])
    assert_equal "ifmmp jmbob", message.encrypt_and_do_all_the_shit
  end
end
