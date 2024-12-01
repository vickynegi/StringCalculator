# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      numbers = numbers.split("\n")[1].split(/[^0-9-]+/).map(&:to_i) rescue [0]
    else
      numbers = numbers.gsub("\n", ',').split(",").map(&:to_i)
    end

    unless numbers.select(&:negative?).empty?
      raise "negatives not allowed #{numbers.select(&:negative?) * ','}"
    else
      numbers.reject { |num| num > 1000 }.sum
    end
  end
end
