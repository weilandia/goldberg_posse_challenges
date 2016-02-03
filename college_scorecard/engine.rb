$LOAD_PATH.unshift(File.expand_path(".", __dir__))
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
end

by_state
