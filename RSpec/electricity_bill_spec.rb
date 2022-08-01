require 'electricity_bill'

describe Electricity do
  it "should test details of person" do
    e = Electricity.new("shailaja", 234)
    expect(e.calculate).to eq(2124)
  end
end