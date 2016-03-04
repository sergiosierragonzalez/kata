Transform /^\d*$/ do |number|
	number.to_i
end

Given(/^a number.*? divisible by (?:three|five|three .* five) \[number:(\d*)\]$/) do |number|
  @number = number
end

When(/^I run FizzBuzz$/) do
	@fizzbuzzresult = FizzBuzz(@number)
end

Then(/^I should receive "(.*)"$/) do |expected| 
  expect(@fizzbuzzresult).to eql(expected), "ERROR: The FizzBuzz output is incorrect. actual: #{@fizzbuzzresult} expected: #{expected}"
end

Then(/^I should receive the same number$/) do 
  expect(@fizzbuzzresult).to eql(@number), "ERROR: The FizzBuzz output is incorrect. actual: #{@fizzbuzzresult} expected: #{@number}"
end
