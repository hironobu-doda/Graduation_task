class Comment < ApplicationRecord
  belongs_to :creation_date
  validates :before_content, presence: true
end
