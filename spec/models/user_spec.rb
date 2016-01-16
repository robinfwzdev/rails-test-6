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
end