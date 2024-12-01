# frozen_string_literal: true

require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  subject(:str_cal_obj) { described_class.new }

  describe 'calculate sum - add(numbers)' do
    it 'if input string is empty' do
      expect(str_cal_obj.add("")).to eq(0)
    end

    it 'if input string contains only 2 numbers' do
      expect(str_cal_obj.add("1,2")).to eq(3)
    end

    it 'if input string contains only 1 number' do
      expect(str_cal_obj.add("1")).to eq(1)
    end

    it "if input string contains unknown amount of numbers" do
      expect(str_cal_obj.add((1..600).to_a * ",")).to eq(180300)
    end

    it "if input string contains new line character" do
      expect(str_cal_obj.add("1\n2,3")).to eq(6)
    end

    it "if input string contains delimiter" do
      expect(str_cal_obj.add("//;\n1;2")).to eq(3)
    end

    it "if input string contains delimiter without numbers" do
      expect(str_cal_obj.add("//;\n;")).to eq(0)
    end

    it 'if input string contains delimeter with negative numbers' do
      expect { str_cal_obj.add("//;\n1;-2;-4") }.to raise_error("negatives not allowed -2,-4")
    end

    it 'if input string contains new line character with negative numbers' do
      expect { str_cal_obj.add("1\n2,-3") }.to raise_error("negatives not allowed -3")
    end

    it "if input string contains bigger number greater than 1000" do
      expect(str_cal_obj.add("3,4,51000,1001,2,1")).to eq(10)
    end

    it "if input string contains delimiters of any length" do
      expect(str_cal_obj.add("//[***]\n1***2***3")).to eq(6)
    end

    it "if input string contains multiple delimiters" do
      expect(str_cal_obj.add("//[*][%]\n1*2%3")).to eq(6)
    end

    it "if input string contains multiple delimiters with length longer than one char" do
      expect(str_cal_obj.add("//[***][##][&&]\n4***8%%2")).to eq(14)
    end
  end
end
