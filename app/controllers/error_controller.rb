class ErrorController < ApplicationController
  def index
    error_numbers = *(1..6)
    random_error = error_numbers.sample
    puts '***********************'
    puts random_error
    puts '***********************'
    case random_error
    when 1
      raise "This is an exception"
    when 2
      raise StandardError.new "This is a standard error exception"
    when 3
      STDERR.puts "I am an STDOUT error message"
    when 4
      zero = 1 / 0
    when 5
      raise NoMemoryError, "No Memory error"
    when 6
      raise RuntimeError.new("Runtime error")
    else
      true
    end
  end
end
