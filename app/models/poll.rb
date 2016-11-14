class Poll < ApplicationRecord
  has_many :poll_options

  def poll_option_array
    options = []
    self.poll_options.each do |poll_option|
      options << { name: poll_option.movie.name, year: poll_option.movie.year, movie: poll_option.movie }
    end
    options
  end
end
