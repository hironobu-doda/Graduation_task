class Comment < ApplicationRecord
  belongs_to :creation_date
  belongs_to :user

  validates :before_content, presence: true, length: { maximum: 200 }
  validates :after_content, presence: true, length: { maximum: 200 }
  validates :before_point, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :after_point, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
