# frozen_string_literal: true

require 'bigdecimal/util'

class TaxCalculator
  def initialize(base_tax, import_tax)
    @base_tax = base_tax
    @import_tax = import_tax
  end

  def calculate_tax(price, imported, tax_exempt)
    tax = 0
    tax += @base_tax unless tax_exempt
    tax += @import_tax if imported
    round_up(price.to_d * tax.to_d)
  end

  private

  def round_up(value)
    ((value.to_d * 20).ceil/20.0).round(2).to_d
  end
end