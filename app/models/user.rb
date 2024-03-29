class User < ActiveRecord::Base
  has_secure_password
  has_many :tasks
  validates :username, :email, :password, presence: :true
  validates :email, uniqueness: :true
end
