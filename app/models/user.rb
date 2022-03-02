class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :received_likes, class_name: 'Favourite', foreign_key: 'liked_id'
  has_many :given_likes, class_name: 'Favourite', foreign_key: 'liker_id'
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
