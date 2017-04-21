require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('accepts user input and displays result') do
    visit('/')
    fill_in('first_input', :with => 'random')
    fill_in('second_input', :with => 'fully')

    click_button('Send')
    expect(page).to have_content("These words have no letter matches and are antigrams.")
  end
end
