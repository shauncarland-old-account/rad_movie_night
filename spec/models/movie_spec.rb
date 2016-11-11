require 'spec_helper'
require 'rails_helper'

describe Movie do
  let(:movie) { FactoryGirl.create(:movie, name: "Test") }
  it 'creates a movie' do
    expect(movie.name).to eq("Test")
  end
end
