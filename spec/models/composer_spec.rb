RSpec.describe Composer do
  describe 'Validations' do
    describe 'Required Field(s)' do

      it 'is invalid without a surname' do
        comp = Composer.create(forename: "Franz Joseph", city: "Vienna", dob: 1732, dod: 1809, age: 77, thumbnail: "/images/haydn.jpg")
        expect(comp).to_not be_valid
      end

      it 'is invalid witout a forename' do
        comp = Composer.create(surname: "Beethoven", city: "Vienna", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
        expect(comp).to_not be_valid
      end

      it 'is invalid witout a city' do
        comp = Composer.create(surname: "Beethoven", forename: "Ludwig van", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
        expect(comp).to_not be_valid
      end

      it 'is invalid witout a date of birth' do
        comp = Composer.create(surname: "Schubert", forename: "Franz", city: "Vienna", dod: 1828, age: 31, thumbnail: "/images/schubert.jpg")
        expect(comp).to_not be_valid
      end

      it 'is invalid witout a date of death' do
        comp = Composer.create(surname: "Schubert", forename: "Franz", city: "Vienna", dob: 1797, age: 31, thumbnail: "/images/schubert.jpg")
        expect(comp).to_not be_valid
      end

      it 'is invalid witout an age of death' do
        comp = Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827)
        expect(comp).to_not be_valid
      end
    end
  end

  context 'Analysis' do
    it 'finds average age of death' do
      Composer.create(surname: "Haydn", forename: "Franz Joseph", city: "Vienna", dob: 1732, dod: 1809, age: 77, thumbnail: "/images/haydn.jpg")
      Composer.create(surname: "Mozart", forename: "Wolfgang Amadeus", city: "Vienna", dob: 1756, dod: 1791, age: 35, thumbnail: "/images/mozart.jpg")
      Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
      expect(Composer.average_age).to eq(56)
    end
  end

  context 'Choose Subsets' do
    it 'returns list by age' do
      Composer.create(surname: "Haydn", forename: "Franz Joseph", city: "Vienna", dob: 1732, dod: 1809, age: 77, thumbnail: "/images/haydn.jpg")
      Composer.create(surname: "Mozart", forename: "Wolfgang Amadeus", city: "Vienna", dob: 1756, dod: 1791, age: 35, thumbnail: "/images/mozart.jpg")
      Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
      subset = Composer.get_by_age(35)
      expect(subset.count).to eq(1)
      expect(subset[0].surname).to eq('Mozart')
    end
  end



end
