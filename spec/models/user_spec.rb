require 'rails_helper'

describe User do
  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :dob }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
  end

  before(:each) do
    allow(Date).to receive(:today).and_return('15/1/2015'.to_date)
  end

  let!(:father)   { create(:user) }
  let!(:son)      { create(:child, father_id: father.id, gender: 'male') }
  let!(:daughter) { create(:child, father_id: father.id, gender: 'female') }


  describe '#ensure_valid_age?' do
    let(:user) { build(:user) }

    context 'valid' do
      ['06/04/1990', '06/10/2000'].each do |dob|
        it "#{dob}" do
          user.dob = dob
          expect(user).to be_valid
        end
      end
    end

    context 'invalid' do
      ['06/04/2500', '06/10/2025'].each do |dob|
        it "#{dob}" do
          user.dob = dob
          expect(user).to_not be_valid
        end
      end
    end
  end

  describe '#name' do
    let!(:user) { create(:user) }
    let(:name)  { user.first_name + " " + user.last_name }

    it 'merge first_name and last_name' do
      expect(user.name).to eq name
    end
  end

  describe '#sons' do
    it 'get all sons' do
      expect(father.sons.first).to eq son
      expect(father.sons.first).not_to eq daughter
    end
  end

  describe '#daughters' do
    it 'get all daughters' do
      expect(father.daughters.first).to eq daughter
      expect(father.daughters.first).not_to eq son
    end
  end
end