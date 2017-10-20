class Review < ApplicationRecord
  belongs_to :category
  belongs_to :work_type
  belongs_to :industry
  belongs_to :case
  has_one :photo
end
