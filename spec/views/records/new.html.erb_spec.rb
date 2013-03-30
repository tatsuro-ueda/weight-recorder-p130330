require 'spec_helper'

describe "records/new" do
  before(:each) do
    assign(:record, stub_model(Record,
      :email => nil,
      :weight => "9.99",
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", records_path, "post" do
      assert_select "input#record_email[name=?]", "record[email]"
      assert_select "input#record_weight[name=?]", "record[weight]"
      assert_select "textarea#record_memo[name=?]", "record[memo]"
    end
  end
end
