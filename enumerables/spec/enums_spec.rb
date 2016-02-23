require 'spec_helper'

class ArrayTest < Minitest::Test

  def test_any?
    ages = [12, 11, 13, 14, 16, 20]
    assert ages.enums_any? { |age| age > 18}
  end

end
