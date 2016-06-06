require 'rails_helper'

RSpec.feature "User can search by zipcode" do
  it "gives appropriate results" do
    visit root_path

    fill_in "zip", with: '80203'
    click_on "Locate"

    # expect(current_path).to eq("/search?zip=80203")
    expect(current_path).to eq("/search")
    expect(page).to have_content("1.")
    expect(page).to have_content("10.")
    expect(page).to_not have_content("11.")

    expect(page).to_not have_content("Gasoline")
    expect(page).to_not have_content("Gas")


  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search?zip=80203"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
