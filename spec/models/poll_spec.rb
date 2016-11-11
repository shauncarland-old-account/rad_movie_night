require 'spec_helper'
require 'rails_helper'

describe Poll do
  describe 'when FactoryGirl is used to create a poll factory' do
    let!(:poll) { FactoryGirl.create(:poll) }
    it 'creates a valid factory' do
      expect(poll).to be_valid
    end
  end

  describe 'when there is a poll' do
    let!(:poll) { FactoryGirl.create(:poll) }
    describe 'and the poll has three poll options' do
      let!(:poll_option_1) { FactoryGirl.create(:poll_option, poll: poll) }
      let!(:poll_option_2) { FactoryGirl.create(:poll_option, poll: poll) }
      let!(:poll_option_3) { FactoryGirl.create(:poll_option, poll: poll) }

      it 'returns an array with the three poll options when .poll_options method is called' do
        expect(poll.poll_options.count).to eq(3)
        expect(poll.poll_options).to eq([poll_option_1,poll_option_2,poll_option_3])
      end
    end
  end
end
