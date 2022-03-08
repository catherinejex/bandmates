class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :chatrooms
  has_many :received_likes, class_name: 'Favourite', foreign_key: 'liked_id'
  has_many :given_likes, class_name: 'Favourite', foreign_key: 'liker_id'
  has_many_attached :photos
  acts_as_taggable_on :instruments
  acts_as_taggable_on :genres
  # acts_as_taggable_on :genres
  # serialize :instruments, Array
  # serialize :genres, Array
  EXPERIENCE = ["beginner", "novice", "intermediate", "advanced", "professional"]
end
