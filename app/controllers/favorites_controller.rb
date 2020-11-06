class FavoritesController < ApplicationController

  def index
    @movies = current_user.favorite_movies
  end

  def create
    movie = Movie.find(params[:movie_id])
    movie.favorites.create!(user_id: current_user.id)
    redirect_to movie_path(movie)
  end
  
end