class CreationDate < ApplicationRecord
  # validates :date, presence: true, uniqueness: true
  validates :date, presence: true, :uniqueness => {:scope => :user_id}
  has_many :comments, dependent: :destroy
  belongs_to :user
end
