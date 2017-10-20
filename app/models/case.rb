class Case < ApplicationRecord
  has_many :photos
  has_many :indents
  has_many :reviews
  belongs_to :category
  belongs_to :work_type
  belongs_to :industry
end
