class Enums
  def any?
   over_18 = false
   ages.each do |age|
   over_18 = true if age > 18
 end
 end
end
