require 'spec_helper'

describe "workouts/index" do
  before(:each) do
    assign(:workouts, [
      stub_model(Workout,
        :name => "Name",
        :program => "Program",
        :description => "MyText"
      ),
      stub_model(Workout,
        :name => "Name",
        :program => "Program",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of workouts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Program".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
