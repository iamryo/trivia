require 'rails_helper'

feature 'View answer show page' do
  scenario 'user sees relevant information' do
    @answer = FactoryGirl.create(:answer)
    visit answer_path(@answer)
    expect(page).to have_css 'h1', text: 'Answer'
    expect(page).to have_css  'a.brand', text: 'Trivia'
  end
end
