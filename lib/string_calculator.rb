# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      numbers = numbers.gsub("\n", "").split(numbers[2]).map(&:to_i)
    else
      numbers = numbers.gsub("\n", ',').split(",").map(&:to_i)
    end

    unless numbers.select(&:negative?).empty?
      raise "negatives not allowed #{numbers.select(&:negative?) * ','}"
    else
      numbers.sum
    end
  end
end
