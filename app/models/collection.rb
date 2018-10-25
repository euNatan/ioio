class Collection < ApplicationRecord
  has_many :item
  mount_uploader :image, ImageUploader
end
