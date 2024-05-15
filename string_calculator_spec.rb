require_relative 'string_calculator'
RSpec.describe StringCalculator do
  describe '#add' do
    context 'when given an empty string' do
      it 'returns 0' do
        calculator = StringCalculator.new
        expect(calculator.add('')).to eq(0)
      end
    end
  end
end
