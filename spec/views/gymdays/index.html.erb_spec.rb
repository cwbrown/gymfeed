require 'spec_helper'

describe "gymdays/index" do
  before(:each) do
    assign(:gymdays, [
      stub_model(Gymday,
        :location => "Location"
      ),
      stub_model(Gymday,
        :location => "Location"
      )
    ])
  end

  it "renders a list of gymdays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
