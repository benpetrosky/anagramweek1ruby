require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('accepts user input and displays result') do
    visit('/')
    fill_in('first_input', :with => 'mariners')
    fill_in('second_input', :with => 'mariners')
    click_button('Send')
    expect(page).to have_content("You entered the exact same word twice")
  end
end
