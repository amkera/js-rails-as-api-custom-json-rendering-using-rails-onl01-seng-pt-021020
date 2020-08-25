class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end
 
  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird
  end
end

#No need for instance variables anymore, since we're immediately rendering birds and bird to JSON and are not going to be using ERB.

