require 'spec_helper'
require 'rails_helper'

describe PollOption do
  describe 'when the poll option does not belong to a poll' do
    # let!(:poll_option) { FactoryGirl.create(:poll_option) }

    it 'does not create a valid poll option' do
      expect(PollOption.new).to have(1).error_on(:poll_id)
    end
  end
end
