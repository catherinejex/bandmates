class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :creator, class_name: "User"
  belongs_to :invited, class_name: "User"
end
