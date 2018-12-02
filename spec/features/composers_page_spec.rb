RSpec.describe 'Composer Page Features' do
  describe 'as a visitor to this page, I should see that' do

    it 'displays a banner title' do
      visit '/composers'
      #save_and_open_page
      expect(page).to have_content("Great Symphony Composers")
    end

    it 'shows all composers listed' do
      Composer.create(surname: "Haydn", forename: "Franz Joseph", city: "Vienna", dob: 1732, dod: 1809, age: 77, thumbnail: "/images/haydn.jpg")
      Composer.create(surname: "Mozart", forename: "Wolfgang Amadeus", city: "Vienna", dob: 1756, dod: 1791, age: 35, thumbnail: "/images/mozart.jpg")
      Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
      visit '/composers'
      expect(page).to have_content("Haydn")
      expect(page).to have_content("Mozart")
      expect(page).to have_content("Beethoven")
    end

    it 'shows composers average age at death' do
      Composer.create(surname: "Haydn", forename: "Franz Joseph", city: "Vienna", dob: 1732, dod: 1809, age: 77, thumbnail: "/images/haydn.jpg")
      Composer.create(surname: "Mozart", forename: "Wolfgang Amadeus", city: "Vienna", dob: 1756, dod: 1791, age: 35, thumbnail: "/images/mozart.jpg")
      Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
      visit '/composers'
      expect(page).to have_content("Average Age at Death: 56")
    end



  end
end
