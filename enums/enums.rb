ages = [12, 11, 13, 14, 16, 20]
ages.any? { |age| age > 18 }
=> true

ages = [25, 53, 31, 41, 43, 20]
ages.any? { |age| age < 18 }
=> false
ages = [12,11,13,14,16,20]

def any?
  over_18 = false
  ages.each do |age|
  over_18 = true if age > 18
end
end
