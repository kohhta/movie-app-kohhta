class AddUserIdToMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :user

  end
end
