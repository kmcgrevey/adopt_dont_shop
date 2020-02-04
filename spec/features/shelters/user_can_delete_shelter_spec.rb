RSpec.describe "Delete a Shelter", type: :feature do
  describe "As a Visitor" do
    it "I can click link to remove" do

      shelter_1 = Shelter.create(name: "Mike's Shelter",
                                 address: "1331 17th Street",
                                 city: "Denver",
                                 state: "CO",
                                 zip: "80202")

      shelter_2 = Shelter.create(name: "Meg's Shelter",
                                 address: "150 Main Street",
                                 city: "Hershey",
                                 state: "PA",
                                 zip: "17033")

      visit '/shelters'

      expect(page).to have_content(shelter_1.name)
      expect(page).to have_content(shelter_2.name)

      visit "/shelters/#{shelter_1.id}"
      click_on 'delete'

      visit '/shelters'

      expect(page).to have_content(shelter_2.name)
      expect(page).to_not have_content(shelter_1.name)

    end
  end
end
