require 'spec_helper'

feature 'hello message page', js: true do
  scenario 'The page has the hello message on it' do
    visit '/hello_message'
    expect(page).to have_text('Hello')
  end
end
