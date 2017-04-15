require "bike"

describe Bike do

  it {is_expected.to respond_to(:working?)}

  it {is_expected.to respond_to(:report_as_broken)}

  it "should be not working if reported" do
    subject.report_as_broken
    expect(subject.working?).to eq false
  end


  it "should be working after being fixed" do
    subject.report_as_broken; subject.fix
    expect(subject.working?).to eq true
  end

end
