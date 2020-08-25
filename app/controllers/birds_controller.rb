class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end
 
  def show
    bird = Bird.find_by(id: params[:id])
    #render json: bird
    render json: {id: bird.id, name: bird.name, species: bird.species } 
    #OR: render json: bird.slice(:id, :name, :species)
  end
end
#can pick and choose what you'd like to send 

#No need for instance variables anymore, since we're immediately rendering birds and bird to JSON and are not going to be using ERB.

