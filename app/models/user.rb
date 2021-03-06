class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 100 }

  mount_uploader :image, ImageUploader

  has_many :creation_dates
  has_many :comments
  has_many :copings
end
