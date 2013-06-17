require 'spec_helper'

describe Question do
  before(:each) do
    FactoryGirl.create(:user)
    current_user = :user
  end

  it "has a body" do 
    question = FactoryGirl.create(:question)
    question.body.should_not be_nil
  end

  it "should not have more than 255 characters in the body" do
    question = FactoryGirl.create(:question)
    question.body.length.should <= 255
  end

  it "should not be vaild without a body" do
    question = FactoryGirl.build(:question, :body => nil)
    question.should_not be_valid
  end

  it "should have answers" do 
    answer1 = FactoryGirl.create(:answer, :body => "This is the first answer")
    answer2 = FactoryGirl.create(:answer, :body => "This is the second answer")
    question = FactoryGirl.create(:question, :answers => [answer1, answer2])
    question.answers.should include(answer1)
    question.answers.should include(answer2)
  end
end
