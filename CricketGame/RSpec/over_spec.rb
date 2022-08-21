require 'rspec'
require_relative 'over.rb'

RSpec.describe Over do 
  it "checking conditions" do
   obj = Over.new
   k = obj.game_type
   expect(k).to eq(k)
  end
end