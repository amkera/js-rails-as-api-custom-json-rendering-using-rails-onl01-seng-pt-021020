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
    #Rather than having to spell out each key, the Hash slice method returns a new hash with only the keys that are passed into slice
    #While slice works fine for a single hash, as with bird, it won't work for an array of hashes like the one we have in our index action:
    
  end
end
#can pick and choose what you'd like to send 

#No need for instance variables anymore, since we're immediately rendering birds and bird to JSON and are not going to be using ERB.

