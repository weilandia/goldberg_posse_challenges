require 'enumberables'
require 'rspec'

RSpec.describe Enumerable do
  describe '.any?' do
    context 'array contains age of 20' do
      context 'proc asks for age greater than 18' do
        it 'is true' do
          ages = [20]
          condition = Proc.new {|age| age > 18 }
          expect(described_class.any?(ages, condition)  ).to eq true
        end
      end
      context 'proc asks for age less than 18' do
        it 'is false' do
          ages = [17]
          condition = Proc.new {|age| age > 18 }
          expect(described_class.any?(ages, condition)  ).to eq false
        end
      end
    end
  end
end
