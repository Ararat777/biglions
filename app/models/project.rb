class Project < ApplicationRecord
  mount_uploader :document, DocumentUploader
  validates :phone,presence: {message: "Поле «Номер телефона» не заполнено"},numericality: {:message => "Введите актуальный номер телефона(минимальная длинна номера - 7 цифр)",length: {:is => 7}}
  
end
