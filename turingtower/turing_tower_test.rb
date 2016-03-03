require 'minitest/autorun'
require 'minitest/pride'
require_relative 'turing_tower'

class TuringTowerTest < Minitest::Test
  def test_final_output
    tt = TuringTower.new(3) #[0,1, 2]
    tt.move
    assert_equal [2,1,0], tt.stack3
  end

  def test_final_spec_output
    tt = TuringTower.new(5) #[0,1, 2]
    tt.move
    assert_equal [4, 3, 2,1,0], tt.stack3
  end

end
