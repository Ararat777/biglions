class Case < ApplicationRecord
  belongs_to :category
  belongs_to :work_type
  belongs_to :industry
end
