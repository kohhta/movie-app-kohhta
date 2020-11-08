class FavoritesController < ApplicationController

  def index
    @movies = current_user.favorite_movies

  end

  def show
    movie = Movie.find(params[:movie_id])
    favorite_status = current_user.has_favorited?(movie)
    render json: { hasFavorited: favorite_status } 
  end
  

  def create
    movie = Movie.find(params[:movie_id])
    movie.favorites.create!(user_id: current_user.id)
    render json: { status: 'ok' }
  end
  
end