Feature: fizzbuzz

Scenario: Number is divisible by three

  Given a number divisible by three [number:9]
  When I run FizzBuzz
  Then I should receive "Fizz"


Scenario: Number is divisible by five

  Given a number divisible by five [number:10]
  When I run FizzBuzz
  Then I should receive "Buzz"


Scenario: Number is divisible by three and five

  Given a number divisible by three and five [number:15]
  When I run FizzBuzz
  Then I should receive "FizzBuzz"

Scenario: Number isn't divisible by three or five

  Given a number not divisible by three or five [number:17]
  When I run FizzBuzz
  Then I should receive the same number


  Scenario Outline: Number is divisible by a number

  Given a number divisible by <divisor> [number:<number>]
  When I run FizzBuzz
  Then I should receive "<output>"


  Examples:
    | divisor | number | output |
    | three   | 3      | Fizz   |
    | five    | 5      | Buzz   |
    | three and five | 15 | FizzBuzz |