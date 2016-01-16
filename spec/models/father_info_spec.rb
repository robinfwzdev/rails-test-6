require 'rails_helper'

describe FatherInfo do
  context 'associations' do
    it { is_expected.to belong_to :father }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :first_name }
  end
end