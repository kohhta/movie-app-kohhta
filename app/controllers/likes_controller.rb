class LikesController < ApplicationController
  def create
    movie = Movie.find(params[:movie_id])
    movie.likes.create!(user_id: current_user.id)
    redirect_to movie_path(movie)
  end
end