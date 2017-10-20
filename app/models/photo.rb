class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :review
  belongs_to :case
end
