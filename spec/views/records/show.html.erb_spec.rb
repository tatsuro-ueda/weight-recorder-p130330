require 'spec_helper'

describe "records/show" do
  before(:each) do
    @record = assign(:record, stub_model(Record,
      :email => nil,
      :weight => "9.99",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/9.99/)
    rendered.should match(/MyText/)
  end
end
