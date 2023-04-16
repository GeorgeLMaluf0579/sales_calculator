# frozen_string_literal: true
require_relative '../lib/file_reader'

describe FileReader do
  describe '#read_inputs' do
    it 'prints the readed lines of the file' do
      input = FileReader.new('../inputs/input1.txt')

      expect(input.item_lines.count).to eq(3)
      expect(input.item_lines[0]).to eq("2 book at 12.49\n")
    end
  end
end