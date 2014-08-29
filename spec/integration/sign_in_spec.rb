require 'rails_helper'

feature 'Sign in as a user' do
  scenario 'with a valid user' do
    FactoryGirl.create(:user)
    sign_in_as 'example@example.com', 'changeme'
    expect(page).to have_css '.alert', text: "Signed in successfully."
  end

  scenario 'with an invalid user' do
    sign_in_as 'person@example.com', 'password'
    expect(page).to have_css '.alert', text: "Invalid email or password."
  end
end
