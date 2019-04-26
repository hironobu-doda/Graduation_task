class Coping < ApplicationRecord
  belongs_to :user
  validates :coping_repertory, presence: true, length: { maximum: 200 }
end
