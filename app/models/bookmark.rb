class Bookmark < ApplicationRecord

  validates :movie_id, :uniqueness => {:scope => :user_id, :message => "already bookmarked"}

  # belongs_to(:movie, :class_name => "Movie", :foreign_key => "movie_id")
  belongs_to :movie
  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")


end
