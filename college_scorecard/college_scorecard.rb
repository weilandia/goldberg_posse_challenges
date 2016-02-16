$LOAD_PATH.unshift(File.expand_path(".", __dir__))
require 'CSV'

def self.inspect
  "#<#{self.class}>"
end

def self.from_csv
  CSV.open(data = '2013_college_scorecards.csv', headers: true, header_converters: :symbol).map do |row|
    row.to_hash
  end
end

def self.by_state(state = ARGV[1])
  self.from_csv.each do |row| 
    puts row[:instnm] if row[:stabbr].upcase == ARGV[1].upcase
  end
end

def self.top_average_faculty_salary(entries = ARGV[1])
  name_with_avg = self.from_csv.map do |row| 
    [row[:avgfacsal], row[:instnm]]
  end
  name_with_avg.sort_by! { |salary, name| salary.to_i }
  name_with_avg = name_with_avg.reverse
  entries.to_i.times do |n|
    puts name_with_avg[n][1]
  end
end

def self.median_debt_between(val1 = ARGV[1], val2 = ARGV[2])
  range = [val1.to_f, val2.to_f]
  matches = self.from_csv.select do |row|
    row[:grad_debt_mdn].to_f > range.min && row[:grad_debt_mdn].to_f < range.max
  end
  name_with_med = matches.map do |row|
    [row[:grad_debt_mdn], row[:instnm]]
  end
  name_with_med.sort_by! { |debt, name| debt }
  name_with_med.reverse.each do |school|
    puts "#{school[1]} ($#{school[0]})"
  end
end

method(ARGV[0]).call