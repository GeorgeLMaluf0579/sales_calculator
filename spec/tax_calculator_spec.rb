# frozen_string_literal: true
require_relative '../lib/tax_calculator'

describe TaxCalculator do
  before :all do
    @calculator = TaxCalculator.new(0.10, 0.05)
  end

  it 'should not have taxes in case of local exception' do
    expect(@calculator.calculate_tax(10, false, true)).to eq(0)
  end
  
  it 'should have only imported tax' do
    expect(@calculator.calculate_tax(10, true, true)).to eq(0.5)
  end

  it 'should have only based tax' do
    expect(@calculator.calculate_tax(10, false, false)).to eq(1.0)
  end

  it 'should have both based and imported tax' do
    expect(@calculator.calculate_tax(10, true, false)).to eq(1.5)
  end
end