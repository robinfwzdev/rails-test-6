require 'rails_helper'

describe Father do
  context 'associations' do
    it { is_expected.to have_many :sons }
  end

  describe '#ensure_valid_age?' do
    let(:father) { build(:father) }

    context 'valid' do
      ['06/04/1990', '06/10/1995'].each do |dob|
        it "#{dob}" do
          father.dob = dob
          expect(father).to be_valid
        end
      end
    end

    context 'invalid' do
      ['06/04/2000', '06/10/2015'].each do |dob|
        it "#{dob}" do
          father.dob = dob
          expect(father).to_not be_valid
        end
      end
    end
  end
end