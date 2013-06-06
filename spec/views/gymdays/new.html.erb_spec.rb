require 'spec_helper'

describe "gymdays/new" do
  before(:each) do
    assign(:gymday, stub_model(Gymday,
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new gymday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gymdays_path, "post" do
      assert_select "input#gymday_location[name=?]", "gymday[location]"
    end
  end
end
