## String Calculator Problem
```ruby
This problem is well described here https://blog.incubyte.co/blog/tdd-assessment/ . I have covered  all the cases in this repository.
```

Following are the some cases/points to cover, but those cases/points which are not listed below are implemented in the repository(also visible in commit history) and can be executed :-
1) Return 0, if input string is empty.
2) Calculate sum, if input string contains two numbers.
3) Calculate sum, if input string contains new line character.
4) Calculate sum, if input string contains the delimiter.
5) Throw an exception, if input string contains negative number.
6) Calculate sum by ignoring the integers which are greater than 1000.
7) Calculate sum by handling delimiters of any length.
8) Calculate sum by handling multiple delimiters.
9) Calculate sum by Handling multiple delimiters with length longer than one char.


## Pre-requisite installation steps are as follows :-

1) Ruby Version: 3.3.1

2) Clone the repository
```ruby
git clone https://github.com/vickynegi/StringCalculator.git
```

3) Please navigate to the directory
```ruby
cd StringCalculator
```

4) Run
```ruby
bundle install
```

5) To run the Rspec, please run
```ruby
rspec spec/string_calculator_spec.rb
```

## Some basic details about the class

This is the class name which is implemented.

1) Empty string
```ruby
StringCalculator.new.add("") # 0
```

2) Integers in string
```ruby
StringCalculator.new.add("1,2") # 3
```

3) New line character
```ruby
StringCalculator.new.add("1\n2,3") # 6
```

4) Delimeters
```ruby
StringCalculator.new.add("/;\n1;2") # 3
```

5) Negative numbers
```ruby
StringCalculator.new.add("//;\n1;-2;-4") # negatives not allowed -2,-4
```

6) Ignoring the integers which are greater than 1000
```ruby
StringCalculator.new.add("3,4,51000,1001,2,1") # 10
```

7) Delimiters with any length.
```ruby
StringCalculator.new.add("//[***]\n1***2***3") # 6
```

8) handle multiple delimiters
```ruby
StringCalculator.new.add("//[*][%]\n1*2%3") # 6
```

9) Handle multiple delimiters with length longer than one char
```ruby
StringCalculator.new.add("//[***][##][&&]\n4***8%%2") # 14
```