require 'spec_helper'

describe "scores/index" do
  before(:each) do
    assign(:scores, [
      stub_model(Score,
        :value => ""
      ),
      stub_model(Score,
        :value => ""
      )
    ])
  end

  it "renders a list of scores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
