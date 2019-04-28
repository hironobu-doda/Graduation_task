class Coping < ApplicationRecord
  belongs_to :user
  validates :coping_repertory, presence: true, length: { maximum: 60 }
end
