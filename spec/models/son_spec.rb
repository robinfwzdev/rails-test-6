require 'rails_helper'

describe Son do
  context 'associations' do
    it { is_expected.to belong_to :father }
    it { is_expected.to belong_to :mother }
  end
end