RSpec.describe Symphony do
  describe 'Validations' do
    describe 'Required Field(s)' do

      it 'should be invalid if missing a name' do
        symphony = Symphony.create(key: "C minor", opus: "Op. 67", moniker: "", year: 1807, composer_id: 3)
        expect(symphony).to_not be_valid
      end
      it 'should be invalid if missing a year' do
        symphony = Symphony.create(name: "Symphony No. 5", key: "C minor", opus: "Op. 67", moniker: "", composer_id: 3)
        expect(symphony).to_not be_valid
      end
      it 'should be invalid if missing a runtime' do
        symphony = Symphony.create(name: "Symphony No. 3", key: "", opus: "", moniker: "", year: 1946, composer_id: 16)
        expect(symphony).to_not be_valid
      end
      it 'should be invalid if missing a composer_id' do
        symphony = Symphony.create(name: "Symphony No. 5", key: "C minor", opus: "Op. 67", moniker: "", year: 1807)
        expect(symphony).to_not be_valid
      end

    end
  end
end
