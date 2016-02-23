require 'spec_helper'

describe Enums do
  it "returns true if any" do
    collection = [1, 2, 3, 4, 5]
    condition = Proc.new { |a| a > 6 }
    refute Enums.any?(collection, condition)
  end
end
