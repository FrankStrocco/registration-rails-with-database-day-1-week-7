require 'rails_helper'

RSpec.feature "RegisterUsers", type: :feature do
  context "Landing page" do
      Steps "Going to Landing page" do
          Given "Get to localhost 3000" do
              visit "/"
          end
          Then "I see Welcome!" do
              expect(page).to have_content("Hi There!")
          end
      end
  end
  context "Register" do
      Steps "To register a user" do
          Given "I'm registering" do
              visit "users/register"
          end
          Then "User can enter information" do
              fill_in 'full_name', with: "Bob Spock"
              fill_in 'street_address', with: '123 Street'
              fill_in 'city', with: 'Rincon'
              fill_in 'state', with: 'PR'
              fill_in 'country', with: 'US'
              fill_in 'email', with: 'me@example.com'
              fill_in 'username', with: 'Bobs'
              fill_in 'password', with: 'bob123'
              click_button 'Register'
          end
          Then 'I go to the page that shows my info' do
              expect(page).to have_content 'Congrats on registering, Bobs!'
          end
      end
  end
end
