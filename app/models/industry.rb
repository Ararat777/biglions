class Industry < ApplicationRecord
  has_many :reviews
  has_many :cases
end
