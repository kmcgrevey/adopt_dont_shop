require 'rails_helper'

RSpec.describe "Create Shelters", type: :feature do
  describe "As a visitor" do
    it 'I can create a shelter' do
      # shelter_1 = Shelter.create(name: "Mike's Shelter",
      #                            address: "1331 17th Street",
      #                            city: "Denver",
      #                            state: "CO",
      #                            zip: "80202")

      visit '/shelters'

      click_link 'New Shelter'

      expect(current_path).to eq('/shelters/new')

      fill_in 'Name', with: 'Bozo'
      fill_in 'Address', with: '123 Main'
      fill_in 'City', with: 'Kalamazoo'
      fill_in 'State', with: 'MI'
      fill_in 'Zip', with: '12345'
      click_on 'Create Shelter'

      expect(current_path).to eq('/shelters')
      expect(page).to have_content('Bozo')
      # expect(page).to have_content('123 Main')
      # expect(page).to have_content('Kalamazoo')
      # expect(page).to have_content('MI')
      # expect(page).to have_content('12345')
    end
  end
end
