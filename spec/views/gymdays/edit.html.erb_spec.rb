require 'spec_helper'

describe "gymdays/edit" do
  before(:each) do
    @gymday = assign(:gymday, stub_model(Gymday,
      :location => "MyString"
    ))
  end

  it "renders the edit gymday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gymday_path(@gymday), "post" do
      assert_select "input#gymday_location[name=?]", "gymday[location]"
    end
  end
end
