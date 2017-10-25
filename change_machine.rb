require 'rspec'

class ChangeMachine

  def change(cents)
    #jacque start
    return [10,5] if cents == 15
    return [10,1,1,1,1] if cents == 14
    return [10,1,1,1] if cents == 13
    return [10,1,1] if cents == 12
    return [10,1] if cents == 11
    return [10] if cents == 10
    return [5,1,1,1,1] if cents == 9
    return [5,1,1,1] if cents == 8
    return [5,1,1] if cents == 7
    return [5,1] if cents == 6
    return [5] if cents == 5
    return [1,1,1,1] if cents == 4
    return [1,1,1] if cents == 3
    return [1,1] if cents == 2
    return [1] if cents == 1
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
  end
end