class Category < ApplicationRecord
  has_many :tariffs
  has_many :pages
  has_many :cases
  has_many :reviews
  has_many :questions
  belongs_to :parent,class_name: 'Category'
  has_many :categories,foreign_key: 'parent_id'
end
