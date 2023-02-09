class Movie < ApplicationRecord
    validates :name, presence: true
    validates :preview, presence: true, length: {minimum: 10}
    has_one_attached :movie_poster
    belongs_to :user
end
