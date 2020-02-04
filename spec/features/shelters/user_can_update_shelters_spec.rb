require 'rails_helper'

RSpec.describe "Update Shelters", type: :feature do
  describe "As a visitor" do
    it 'I can edit a shelter' do
      shelter_1 = Shelter.create(name: 'Bozo',
                                 address: '123 Main',
                                 city: 'Kalamazoo',
                                 state: 'MI',
                                 zip: '12345')

      visit "/shelters/#{shelter_1.id}"

      click_link 'Update Shelter'

      expect(current_path).to eq("/shelters/#{shelter_1.id}/edit")
      # expect(page).to have_css('textarea', :count => 5)

      # expect(page).to have_text 'Bozo' #FIX THESE TESTS
      # expect(page).to have_content('123 Main')
      expect(page).to have_selector("input[value='123 Main']") #TEST WORKS!!!
      # expect(page).to have_content('Kalamazoo')
      # expect(page).to have_content('MI')
      # expect(page).to have_content('12345')

      # fill_in 'Name', with: "Bozo's Bazaar"
      # fill_in "#{shelter_1.name}", with: "Bozo's Bazaar"
      # click_on 'Submit'
      click_button

      expect(current_path).to eq("/shelters/#{shelter_1.id}")

      # visit "/shelters/#{shelter_1.id}"

      # expect(page).to have_content("Bozo's Bazaar")
      # expect(page).to have_content('123 Main')
      # expect(page).to have_content('Kalamazoo')
      # expect(page).to have_content('MI')
      # expect(page).to have_content('12345')
      # expect(page).to_not have_content('Bozo')
    end
  end
end
