class MovieController < ApplicationController
  def index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
