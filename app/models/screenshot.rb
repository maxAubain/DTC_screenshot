class Screenshot < ApplicationRecord
  
  # Validations for each screenshot: URL, image path target
  validates :url, presence: true
  validates :image_file_path, presence: true
  validates :image_file_name, presence: true
  
  # Screenshots must belong to its assocaited screenshot request
  belongs_to :screenshotreq

  # Each screenshot instance will have one associated screenshot image in Active Storage
  has_one_attached :image
  
end
