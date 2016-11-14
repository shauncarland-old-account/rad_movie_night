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
    describe 'and the poll has two poll options with unique movies' do
      let!(:movie_1) { Movie.new(name: "Movie 1", year: 2009) }
      let!(:movie_2) { Movie.new(name: "Movie 2", year: 2010) }

      let!(:poll_option_1) { FactoryGirl.create(:poll_option, poll: poll, movie: movie_1) }
      let!(:poll_option_2) { FactoryGirl.create(:poll_option, poll: poll, movie: movie_2) }

      it 'returns an array with the three poll options when .poll_options method is called' do
        expect(poll.poll_options.count).to eq(2)
        expect(poll.poll_options).to eq([poll_option_1,poll_option_2])
      end

      it 'loads a valid select array' do
        poll_option_array = [
          { name: poll_option_1.movie.name, year: poll_option_1.movie.year },
          { name: poll_option_2.movie.name, year: poll_option_2.movie.year }
          ]

        expect(poll.poll_option_array). to eq(poll_option_array)
      end
    end
  end
end
