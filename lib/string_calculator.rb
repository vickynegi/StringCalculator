# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      numbers.gsub("\n", "").split(numbers[2]).map(&:to_i).sum
    else
      numbers.gsub("\n", ',').split(",").map(&:to_i).sum
    end
  end
end
