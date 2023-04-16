# frozen_string_literal

class FileReader
  attr_reader :item_lines

  def initialize(filename)
    @item_lines = read_inputs(filename)
  end
  
  def read_inputs(filename)
    File.readlines("./inputs/#{filename}");
  end
end