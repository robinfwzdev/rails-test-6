require 'rails_helper'

describe Mother do
  context 'associations' do
    it { is_expected.to have_many :sons }
    it { is_expected.to have_many :daughters }
  end
  
  describe '#ensure_valid_age?' do
    let(:mother) { build(:mother) }

    context 'valid' do
      ['06/04/1990', '06/10/1995'].each do |dob|
        it "#{dob}" do
          mother.dob = dob
          expect(mother).to be_valid
        end
      end
    end

    context 'invalid' do
      ['06/04/2000', '06/10/2015'].each do |dob|
        it "#{dob}" do
          mother.dob = dob
          expect(mother).to_not be_valid
        end
      end
    end
  end
end