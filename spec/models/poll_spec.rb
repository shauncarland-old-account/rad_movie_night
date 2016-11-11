require 'spec_helper'
require 'rails_helper'

describe Poll do
  describe 'when FactoryGirl is used to create a poll factory' do
    let!(:poll) { FactoryGirl.create(:poll) }
    it 'creates a valid factory' do
      expect(poll).to be_valid
    end
  end
end
