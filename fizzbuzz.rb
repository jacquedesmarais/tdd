require 'rspec'

class Fizzbuzz
  def output(number)
    return 'Fizzbuzz' if number % 15 == 0
    return 'buzz' if number % 5 == 0  
    return 'Fizz' if number % 3 == 0
    number
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

Fizzbuzz.new.go

RSpec.describe Fizzbuzz do
  let(:fizzbuzz) { Fizzbuzz.new }

  describe '#output' do
    it 'should return 1 if given 1' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do
      expect(fizzbuzz.output(2)).to eq(2)
    end

    it 'should return Fizz if given 3' do
      expect(fizzbuzz.output(3)).to eq('Fizz')
    end

    it 'should return 4 if given 4' do
      expect(fizzbuzz.output(4)).to eq(4)
    end

    it 'should return buzz if given 5' do
      expect(fizzbuzz.output(5)).to eq('buzz')
    end

    it 'should return Fizz if given 6' do
      expect(fizzbuzz.output(6)).to eq('Fizz')
    end

    it 'should return 7 if given 7' do
      expect(fizzbuzz.output(7)).to eq(7)
    end

    it 'should return 8 if given 8' do
      expect(fizzbuzz.output(8)).to eq(8)
    end

    it 'should return Fizz if given 9' do
      expect(fizzbuzz.output(9)).to eq('Fizz')
    end

    it 'should return buzz if given 10' do
      expect(fizzbuzz.output(10)).to eq('buzz')
    end

    it 'should return 11 if given 11' do
      expect(fizzbuzz.output(11)).to eq(11)
    end

    it 'should return Fizz if given 12' do
      expect(fizzbuzz.output(12)).to eq('Fizz')
    end

    it 'should return 13 if given 13' do
      expect(fizzbuzz.output(13)).to eq(13)
    end

    it 'should return 14 if given 14' do
      expect(fizzbuzz.output(14)).to eq(14)
    end

    it 'should return 15 if given 15' do
      expect(fizzbuzz.output(15)).to eq('Fizzbuzz')
    end
















  end
end