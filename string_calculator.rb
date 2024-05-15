class StringCalculator
    def initialize
      @add_called_count = 0
    end
    
    def add(numbers)
      @add_called_count += 1
      return 0 if numbers.empty?

      delimiter = ','
      if numbers.start_with?("//")
        delimiter_end_index = numbers.index("\n")
        delimiter = numbers[2..delimiter_end_index - 1]
        numbers = numbers[delimiter_end_index + 1..-1]
      end
      
      numbers_array = numbers.split(/[\n#{delimiter}]/).map(&:to_i)
      numbers_array.reject! { |n| n > 1000 }
      
      negatives = numbers_array.select { |n| n < 0 }
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?
      numbers_array.sum
    end
    def get_called_count
      @add_called_count
    end
end
