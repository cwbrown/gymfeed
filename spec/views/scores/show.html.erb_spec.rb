require 'spec_helper'

describe "scores/show" do
  before(:each) do
    @score = assign(:score, stub_model(Score,
      :value => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
