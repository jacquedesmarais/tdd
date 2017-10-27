require 'rspec'

class ChangeMachine

  def change(cents)
    final_change = []
    if cents > 0
      counter = cents / 25
      counter.floor.times {final_change << 25}
      cents = cents - (25 * counter.floor)

      counter = cents / 10
      counter.floor.times {final_change << 10}
      cents = cents - (10 * counter.floor)

      counter = cents / 5
      counter.floor.times {final_change << 5}
      cents = cents - (5 * counter.floor)

      counter = cents / 1
      counter.times {final_change << 1}
    end
    return final_change
  end
end

RSpec.describe ChangeMachine do
  let(:change_machine) { ChangeMachine.new }
  describe '#change' do
    it 'should return 1 if cents is 1' do
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return [1,1] if cents is 2' do
      expect(change_machine.change(2)).to eq([1,1])
    end

    it 'should return [1,1,1] if cents is 3' do
      expect(change_machine.change(3)).to eq([1,1,1])
    end

    it 'should return [1,1,1,1] if cents is 4' do
      expect(change_machine.change(4)).to eq([1,1,1,1])
    end

    it 'should return [5] if cents is 5' do
      expect(change_machine.change(5)).to eq([5])
    end

    it 'should return [5,1] if cents is 6' do
      expect(change_machine.change(6)).to eq([5,1])
    end

    it 'should return [5,1,1] if cents is 7' do
      expect(change_machine.change(7)).to eq([5,1,1])
    end

    it 'should return [5,1,1,1] if cents is 8' do
      expect(change_machine.change(8)).to eq([5,1,1,1])
    end

    it 'should return [5,1,1,1,1] if cents is 9' do
      expect(change_machine.change(9)).to eq([5,1,1,1,1])
    end

    it 'should return [10] if cents is 10' do
      expect(change_machine.change(10)).to eq([10])
    end

    it 'should return [10,1] if cents is 11' do
      expect(change_machine.change(11)).to eq([10,1])
    end

    it 'should return [10,1,1] if cents is 12' do
      expect(change_machine.change(12)).to eq([10,1,1])
    end

    it 'should return [10,1,1,1] if cents is 13' do
      expect(change_machine.change(13)).to eq([10,1,1,1])
    end

    it 'should return [10,1,1,1,1] if cents is 14' do
      expect(change_machine.change(14)).to eq([10,1,1,1,1])
    end

    it 'should return [10,5] if cents is 15' do
      expect(change_machine.change(15)).to eq([10,5])
    end

    it 'should return [10,5,1] if cents is 16' do
      expect(change_machine.change(16)).to eq([10,5,1])
    end

    it 'should return [10,5,1,1] if cents is 17' do
      expect(change_machine.change(17)).to eq([10,5,1,1])
    end

    it 'should return [10,5,1,1,1] if cents is 18' do
      expect(change_machine.change(18)).to eq([10,5,1,1,1])
    end

    it 'should return [10,5,1,1,1,1] if cents is 19' do
      expect(change_machine.change(19)).to eq([10,5,1,1,1,1])
    end

    it 'should return [10,10] if cents is 20' do
      expect(change_machine.change(20)).to eq([10,10])
    end

    it 'should return [10,10,1] if cents is 21' do
      expect(change_machine.change(21)).to eq([10,10,1])
    end

    it 'should return [10,10,1,1] if cents is 22' do
      expect(change_machine.change(22)).to eq([10,10,1,1])
    end

    it 'should return [10,10,1,1,1] if cents is 23' do
      expect(change_machine.change(23)).to eq([10,10,1,1,1])
    end

    it 'should return [10,10,1,1,1,1] if cents is 24' do
      expect(change_machine.change(24)).to eq([10,10,1,1,1,1])
    end

    it 'should return [25] if cents is 25' do
      expect(change_machine.change(25)).to eq([25])
    end

    it 'should return [25,25] if cents is 50' do
      expect(change_machine.change(50)).to eq([25,25])
    end  

    it 'should return [25,25,1] if cents is 51' do
      expect(change_machine.change(51)).to eq([25,25,1])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if cents is 119' do
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end

  end
end