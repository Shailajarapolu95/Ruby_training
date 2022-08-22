require 'rspec'
require_relative 'score.rb'

describe Compare do
  it "results must not be nil or false" do
    obj = Compare.new
    expect(obj.final).to be_truthy
  end
end