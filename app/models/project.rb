class Project < ApplicationRecord
  mount_uploader :document, DocumentUploader
end
