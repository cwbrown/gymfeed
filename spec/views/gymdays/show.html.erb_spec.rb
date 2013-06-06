require 'spec_helper'

describe "gymdays/show" do
  before(:each) do
    @gymday = assign(:gymday, stub_model(Gymday,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
  end
end
