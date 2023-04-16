# frozen_string_literal:  true
require_relative '../lib/file_reader'


class SalesComputer
  def initialize(filename)
    @filename = filename
  end

  def input(filename)
    lines = FileReader.new(filename)
  end

  def compute_and_print
    inputs = input(@filename)
    inputs.item_lines.each do |s|
      puts s
    end 
  end  
end