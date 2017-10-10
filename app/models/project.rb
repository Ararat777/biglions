class Project < ApplicationRecord
  mount_uploader :document, DocumentUploader
  validates :name,presence: true,format: {:with => /[А-Яа-яA-Za-z]/,message: 'В имени должны быть только буквы' }
  validates :phone,presence: true,numericality: true,length: {:is => 10}
end
