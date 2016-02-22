times_two = Proc.new do |e|
  e * 2
end

puts times_two.call(5)
