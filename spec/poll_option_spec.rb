require 'spec_helper'
require 'rails_helper'

describe PollOption do
  it { should belong_to :poll }
end
