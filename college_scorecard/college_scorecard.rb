$LOAD_PATH.unshift(File.expand_path(".", __dir__))
require 'pry'
require 'CSV'

def self.inspect
  "#<#{self.class}>"
end

def self.from_csv
  CSV.open(data = '2013_college_scorecards.csv', headers: true, header_converters: :symbol).select do |row|
    row.to_hash
  end
end

def self.by_state(state = ARGV[1])
  data = self.from_csv
  data.map do |row| 
    puts row[:instnm] if row[:stabbr] == ARGV[1]
  end
end

def self.top_average_faculty_salary(quantity = ARGV[1])
data = self.from_csv
  school_with_avg = data.map do |row| 
    [row[:avgfacsal], row[:instnm]]
  end
  school_with_avg.sort_by! { |sal, name| sal }
  school_with_avg.reverse!
  ARGV[1].to_i.times do |n|
    puts school_with_avg[n][1]
  end
end




top_average_faculty_salary