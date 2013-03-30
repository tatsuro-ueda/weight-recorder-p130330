require 'spec_helper'

describe "records/edit" do
  before(:each) do
    @record = assign(:record, stub_model(Record,
      :email => nil,
      :weight => "9.99",
      :memo => "MyText"
    ))
  end

  it "renders the edit record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", record_path(@record), "post" do
      assert_select "input#record_email[name=?]", "record[email]"
      assert_select "input#record_weight[name=?]", "record[weight]"
      assert_select "textarea#record_memo[name=?]", "record[memo]"
    end
  end
end
