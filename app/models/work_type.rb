class WorkType < ApplicationRecord
  has_many :reviews
  has_many :cases
end
