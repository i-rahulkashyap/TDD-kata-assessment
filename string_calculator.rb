class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?

    #   numbers.split(',').map(&:to_i).sum  #this will handle only comma separated numbers
    #   numbers.split(/[\n,]/).map(&:to_i).sum   this will handle both comma and new line separated numbers
      delimiter = ','
      if numbers.start_with?("//")
        delimiter = numbers[2]
        numbers = numbers[4..-1]
      end
  
      numbers.split(/[\n#{delimiter}]/).map(&:to_i).sum
    end
  end