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

    describe 'and the poll option has a valid movie' do
      it 'creates a valid poll option' do
        movie = Movie.new(name: "Test Movie", year: 2006)
        poll_option = PollOption.new(poll: poll, movie: movie)

        expect(poll_option).to be_valid
        expect(poll_option.movie.year).to eq(2006)
      end
    end
  end

  describe 'when the poll option has a movie, but does not belong to a poll' do
    it 'creates an invalid poll option' do
      movie = Movie.new(name: "Test Movie", year: 2006)
      poll_option = PollOption.new(movie: movie)
      expect(poll_option).to_not be_valid
    end
  end
end
