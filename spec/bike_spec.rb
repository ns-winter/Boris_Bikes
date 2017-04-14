require "bike"

describe Bike do

  it {is_expected.to respond_to(:working?)}

  it {is_expected.to respond_to(:report_as_broken)}

  it "should be not working if reported" do
    bike = Bike.new
    bike.report_as_broken
    expect(bike.working?).to eq false
  end

end
