require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/vigenere'

class VigenereTest < Minitest::Test
  def test_offset
    message = Vigenere.new(["bacon", "Hello"])
    assert_equal [2, 1, 3, 15, 14], message.offset
  end

  def test_text_translation
    message = Vigenere.new(["bacon", "Hello"])
    assert_equal [33, 4, 11, 11, 14], message.translation
  end

  def test_rotation
    message = Vigenere.new(["bacon", "Hello"])
    assert_equal [35, 5, 14, 26, 28], message.rotation
  end

  def test_vigenere_returns_encryption
    message = Vigenere.new(["bacon", "Hello"])
    assert_equal "JfoAC", message.encrypt
  end

  def test_vigenere_returns_encryption_with_space
    message = Vigenere.new(["bacon", "Hello", "Goodbye"])
    assert_equal "JfoACHrDrdzh", message.encrypt
  end
end
