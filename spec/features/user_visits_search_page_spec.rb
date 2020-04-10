require 'rails_helper'

describe "user can visit the search page" do
  scenario "and see the closest fuel station" do
    visit '/'

    click_button "Find Nearest Station"

    expect(current_path).to eq(search_path)
  end
end
