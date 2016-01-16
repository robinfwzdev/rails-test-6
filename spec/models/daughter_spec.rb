require 'rails_helper'

describe Daughter do
  context 'associations' do
    it { is_expected.to belong_to :father }
  end
end