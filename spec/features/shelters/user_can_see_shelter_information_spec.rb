require 'rails_helper'

RSpec.describe "shelter show page", type: :feature do
  it "can see all shelter information" do

    shelter_1 = Shelter.create(name: "Mike's Shelter",
                               address: "1331 17th Street",
                               city: "Denver",
                               state: "CO",
                               zip: "80202")

    shelter_1 = Shelter.create(name: "Meg's Shelter",
                               address: "150 Main Street",
                               city: "Hershey",
                               state: "PA",
                               zip: "17033")

    visit '/shelters/1'

    expect(page).to have_content("Mike's Shelter")
    expect(page).to have_content("1331 17th Street")
    expect(page).to have_content("Denver")
    expect(page).to have_content("CO")
    expect(page).to have_content("80202")
  end
end
