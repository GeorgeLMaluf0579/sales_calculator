# frozen_string_literal: true

require 'bigdecimal'

class TaxCalculator
  def initialize(base_tax, import_tax)
    @base_tax = base_tax
    @import_tax = import_tax
  end

  def calculate_tax(price, imported, tax_exempt)
    tax = 0
    tax += @base_tax unless tax_exempt
    tax += @import_tax if imported
    round_up(price * tax)
  end

  private

  def round_up(value)
    round_factor = BigDecimal('1')/BigDecimal('0.05')
    (value * round_factor).ceil/round_factor
  end
end