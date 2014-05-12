class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookmarks

  validates :username,
    presence: true,
    uniqueness: {case_sensitive: false},
    format: {with: /\w+/}
end
