class CreationDate < ApplicationRecord
  validates :date, presence: true, uniqueness: true
  has_many :comments, dependent: :destroy
  belongs_to :user
end
