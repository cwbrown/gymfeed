require 'spec_helper'

describe "workouts/edit" do
  before(:each) do
    @workout = assign(:workout, stub_model(Workout,
      :name => "MyString",
      :program => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit workout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", workout_path(@workout), "post" do
      assert_select "input#workout_name[name=?]", "workout[name]"
      assert_select "input#workout_program[name=?]", "workout[program]"
      assert_select "textarea#workout_description[name=?]", "workout[description]"
    end
  end
end
