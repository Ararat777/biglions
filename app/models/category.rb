class Category < ApplicationRecord
  has_many :pages
  belongs_to :parent,class_name: 'Category'
  has_many :categories,foreign_key: 'parent_id'
end
