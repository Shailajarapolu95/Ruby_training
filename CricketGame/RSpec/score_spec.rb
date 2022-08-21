require 'rspec'
require_relative 'score.rb'

describe Compare do
  it "results must be integer" do
    obj = Compare.new
    expect(obj.final).to be_truthy
  end
end