require 'spec_helper'
require 'rails_helper'

describe PollOption do
  describe 'when the poll option does not belong to a poll' do
    it 'does not create a valid poll option' do
      expect(PollOption.new).to be_invalid
    end
  end

  describe 'when the poll option belongs to a poll' do
    let!(:poll) { FactoryGirl.create(:poll) }
  end
end
