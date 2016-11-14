class PollsController < ApplicationController
  def index
    render "index"
  end

  def show
    @poll = Poll.find(params[:id])
  end
end
