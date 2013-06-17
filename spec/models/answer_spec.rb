require 'spec_helper'

describe Answer do
  before(:each) do
    FactoryGirl.create(:user)
    current_user = :user
  end

  it "has a body" do 
    answer = FactoryGirl.create(:answer)
    answer.body.should_not be_nil
  end

  it "should not have more than 255 characters in the body" do
    answer = FactoryGirl.create(:answer)
    answer.body.length.should <= 255
  end

  it "should not be vaild without a body" do
    answer = FactoryGirl.build(:answer, :body => nil)
    answer.should_not be_valid
  end
end
