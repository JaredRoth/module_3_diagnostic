require 'rails_helper'

RSpec.feature "User can search by zipcode" do
  it "gives appropriate results" do
    visit root_path

    fill_in "zip", with: '80203'
    click_on "Locate"

    # expect(current_path).to eq("/search?zip=80203")
    expect(current_path).to eq("/search")
    within("#1") do
      expect(page).to have_content("UDR	800 Acoma St	ELEC	0.3117 miles	24 hours daily")
    end
    expect(page).to_not have_content("11:")

    expect(page).to_not have_content("BD")
    expect(page).to_not have_content("CNG")
    expect(page).to_not have_content("E85")
    expect(page).to_not have_content("HY")
    expect(page).to_not have_content("LNG")
  end
end
