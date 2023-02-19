class User < ApplicationRecord
  validates_presence_of :username, :email
  validates_length_of :username, in: 5..30
end
