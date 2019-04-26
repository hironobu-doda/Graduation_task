class CreationDate < ApplicationRecord
  validates :date, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user
end
