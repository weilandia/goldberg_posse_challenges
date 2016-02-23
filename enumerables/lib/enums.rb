module Enums
  def enums_any?
    true
    # over_18 = false
    # ages.each do |age|
    # over_18 = true if age > 18
    # end
  end

end
class Array
  include Enums
end
