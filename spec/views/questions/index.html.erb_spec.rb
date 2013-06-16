require 'spec_helper'

describe "questions/index" do
  describe "questions/index" do
    before(:each) do
      assign(:questions, [
        FactoryGirl.create(:question, :body => "What is your name?"),
        FactoryGirl.create(:question, :body => "What is the date?")
      ])
    end
  end

  it "renders a list of questions" do
    render
    assert_response :success
  end
end
