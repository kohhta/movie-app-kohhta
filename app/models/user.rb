class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

          has_many :movies, dependent: :destroy
          has_many :favorites, dependent: :destroy
          has_many :favorite_movies, through: :favorites, source: :movie

          def has_favorited?(movie)
            favorites.exists?(movie_id: movie.id)
          end


end
