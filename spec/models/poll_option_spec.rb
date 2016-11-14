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

    describe 'and the poll option does not have a valid movie' do
      it 'creates an invalid poll option' do
        poll_option = PollOption.new(poll: poll)
        expect(poll_option).to_not be_valid
      end
    end
  end
end
