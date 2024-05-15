class StringCalculator
    def add(numbers)
      return 0 if numbers.empty?

    #   numbers.split(',').map(&:to_i).sum  #this will handle only comma separated numbers
      numbers.split(/[\n,]/).map(&:to_i).sum   #this will handle both comma and new line separated numbers
    end
  end