class Page < ApplicationRecord
  has_many :indents
  belongs_to :category
  
end
