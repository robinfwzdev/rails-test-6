require 'rails_helper'

describe FatherInfo do
  context 'associations' do
    it { is_expected.to belong_to :father }
  end
end