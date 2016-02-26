require 'spec_helper'

describe Enums do
  it "returns false if there are not any" do
    collection = [1, 2, 3, 4, 5]
    condition = Proc.new { |a| a > 6 }
    refute Enums.any?(collection, condition)
  end

  it "returns true if there are any" do
    collection = [1, 2, 3, 4, 5]
    condition = Proc.new { |a| a < 2 }
    assert Enums.any?(collection, condition)
  end

  it "returns an array of elements that meet condition" do
    collection = [1, 2, 3, 4, 5]
    condition = Proc.new { |a| a % 2 == 0 }

    assert_equal [2,4], Enums.select(collection, condition)
  end

  it "returns an empty array if no element meets condition" do
    collection = [1, 2, 3, 4, 5]
    condition = Proc.new { |a| a > 5 }

    assert_equal [], Enums.select(collection, condition)
  end

  it "returns an array where each element has changed based on criteria" do
    collection = ["Rachel", "Joanne", "Nate"]
    condition = Proc.new { |a| "#{a} works at Turing." }

    assert_equal ["Rachel works at Turing.", "Joanne works at Turing.", "Nate works at Turing."], Enums.reduce(collection, condition)
  end

  it "returns an array where each element has been added together" do
    collection = [*1..5]
    condition = :+

    assert_equal 15, Enums.reduce(collection, condition)
  end

  it "returns an array where each element has been subtracted" do
    collection = [*1..5]
    condition = :-

    assert_equal (-13), Enums.reduce(collection, condition)
  end

  it "removes elements that meet criteria" do
    collection = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    condition = Proc.new { |a| a % 2 != 0 }
    assert_equal [2, 4, 6, 8, 10], Enums.reject(collection, condition)
  end
end
