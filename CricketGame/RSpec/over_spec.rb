require 'rspec'
require_relative 'over.rb'

RSpec.describe Over do 
  it "checking conditions" do
   obj = Over.new
   expect(obj.game_type).to eq(@total_balls)
  end
end