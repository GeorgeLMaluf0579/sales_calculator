# frozen_string_literal:  true

require_relative '../lib/file_reader'
require_relative '../lib/receipt'

class SalesComputer
  def initialize(filename)
    @filename = filename
  end

  def input(filename)
    lines = FileReader.new(filename)
  end

  def compute_and_print
    inputs = input(@filename)
    receipt = Receipt.new
    inputs.item_lines.each do |line|
      receipt.add_item(line)
    end

    receipt.print
  end  
end