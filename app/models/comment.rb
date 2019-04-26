class Comment < ApplicationRecord
  belongs_to :creation_date
  validates :before_content, presence: true
  belongs_to :user
end
