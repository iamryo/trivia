require 'spec_helper'

feature 'View answers index page' do
  scenario 'user sees relevant information' do
    visit answers_path
    expect(page).to have_css 'h1', text: 'Answers'
    expect(page).to have_css  'a.brand', text: 'Trivia'
  end
end
