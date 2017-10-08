class Project < ApplicationRecord
  mount_uploader :document, DocumentUploader
  validates :name,presence: true,format: {:with => /[А-Яа-я]/,message: 'В имени должны быть только буквы' }
  validates :phone,presence: true,numericality: true,length: {:minimum => 9,:maximum => 9}
end
