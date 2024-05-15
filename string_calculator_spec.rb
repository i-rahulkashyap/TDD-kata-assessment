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
        it 'example1: returns the sum of all numbers' do
          calculator = StringCalculator.new
          expect(calculator.add("1\n2\n3")).to eq(6)
        end

        it 'example2: returns the sum of all numbers' do
            calculator = StringCalculator.new
            expect(calculator.add("1,3\n3")).to eq(7)
        end
        it 'example3: returns the sum one number and new line' do
            calculator = StringCalculator.new
            expect(calculator.add("1\n")).to eq(1)
          end
    end

    context 'when given a custom delimiter' do
        it 'returns the sum of all numbers' do
          calculator = StringCalculator.new
          expect(calculator.add("//;\n1;2")).to eq(3)
        end
    end

    context 'when given negative numbers' do
        it 'throws an exception with the negative numbers' do
          calculator = StringCalculator.new
          expect { calculator.add('1,-2,3,-4') }.to raise_error(RuntimeError, 'negative numbers not allowed -2, -4')
        end
    end

    context 'when given numbers larger than 1000' do
        it 'ignores numbers larger than 1000' do
          calculator = StringCalculator.new
          expect(calculator.add('1001,2')).to eq(2)
        end
    end
  end

  describe '#get_called_count' do
    it 'returns the number of times add() method was called' do
      calculator = StringCalculator.new
      3.times { calculator.add('1,2,3') }
      expect(calculator.get_called_count).to eq(3)
    end
  end
end
