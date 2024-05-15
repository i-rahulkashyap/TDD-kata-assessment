class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?

    delimiter = ','
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    end
    
    numbers_array = numbers.split(/[\n#{delimiter}]/).map(&:to_i)
    negatives = numbers_array.select { |n| n < 0 }
    raise "negatives not allowed: #{negatives.join(', ')}" if negatives.any?

    numbers_array.sum
    end
end