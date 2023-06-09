# frozen_string_literal: true

require_relative '../lib/tax_calculator'

class Item
  attr_accessor :name, :quantity, :price, :imported, :tax_exempt

  def initialize(params)
    @name = params[:name]
    @quantity = params[:quantity]
    @price = params[:price]
    @imported = params[:imported]
    @tax_exempt = params[:tax_exempt]
    @tax_calculator = params[:tax_calculator]
  end

  def sales_tax
    @tax_calculator.calculate_tax(price, imported, tax_exempt)
  end

  def total_price
    (price + sales_tax) * quantity
  end
end