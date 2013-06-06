require 'spec_helper'

describe "workouts/show" do
  before(:each) do
    @workout = assign(:workout, stub_model(Workout,
      :name => "Name",
      :program => "Program",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Program/)
    rendered.should match(/MyText/)
  end
end
