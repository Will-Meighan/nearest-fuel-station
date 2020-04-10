require 'rails_helper'

describe "user can visit the search page" do
  scenario "and see the closest fuel station" do

    visit '/'

    click_button "Find Nearest Station"

    expect(current_path).to eq(search_path)

    expect(page).to have_content('Name: Seventeenth Street Plaza')
    expect(page).to have_content('Address: 1225 17th St., Denver, CO 80202')
    expect(page).to have_content('Fuel-Type: ELEC')
    expect(page).to have_content('Distance: 0.1 mi')
    expect(page).to have_content('Travel-Time: 1 min')
    expect(page).to have_content('Turn left onto Lawrence St Destination will be on the left')
  end
end


# As a user
# When I visit "/"
# And I select "Turing" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Access Times
# I should also see:
# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1 min)
# - The direction instructions to get to that fuel station
#   "Turn left onto Lawrence St Destination will be on the left"
