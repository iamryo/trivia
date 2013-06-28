module SignInHelpers
  # def sign_in
  #   sign_in_as 'person@example.com'
  # end

  def sign_in_as(email, password)
    visit root_path
    click_link 'Login'
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign in'
  end
end

RSpec.configure do |config|
  config.include SignInHelpers
end
