require 'spec_helper'

describe "scores/edit" do
  before(:each) do
    @score = assign(:score, stub_model(Score,
      :value => ""
    ))
  end

  it "renders the edit score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", score_path(@score), "post" do
      assert_select "input#score_value[name=?]", "score[value]"
    end
  end
end
