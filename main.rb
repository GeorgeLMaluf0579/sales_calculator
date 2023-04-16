# frozen_string_literal: true
require_relative './lib/sales_computer'

filename = ARGV.first

if filename && ['input1.txt', 'input2.txt', 'input3.txt'].include?(filename)
  SalesComputer.new(filename).compute_and_print
else
  puts "Pass in either input1.txt, input2.txt or input3.txt"
end