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

end
