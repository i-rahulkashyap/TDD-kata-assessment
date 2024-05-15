require_relative 'string_calculator'
RSpec.describe StringCalculator do
  describe '#add' do
    context 'when given an empty string' do
      it 'returns 0' do
        calculator = StringCalculator.new
        expect(calculator.add('')).to eq(0)
      end
    end

    context 'when given one number' do
        it 'returns the same number' do
          calculator = StringCalculator.new
          expect(calculator.add('1')).to eq(1)
        end
    end

    context 'when given two numbers' do
        it 'returns the sum of the numbers' do
          calculator = StringCalculator.new
          expect(calculator.add('1,2')).to eq(3)
        end
    end


    context 'when given multiple numbers' do
        it 'returns the sum of all numbers' do
          calculator = StringCalculator.new
          expect(calculator.add('1,2,3,4,5')).to eq(15)
        end
    end

    context 'when given multiple numbers separated by new lines' do
        it 'returns the sum of all numbers' do
          calculator = StringCalculator.new
          expect(calculator.add("1\n2\n3")).to eq(6)
        end
    end


  end
end
