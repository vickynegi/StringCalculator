# frozen_string_literal: true

require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  subject(:str_cal_obj) { described_class.new }

  describe 'calculate sum - add(numbers)' do
    it 'if input string is empty' do
      expect(str_cal_obj.add("")).to eq(0)
    end
  end
end
