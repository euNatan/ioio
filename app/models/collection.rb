class Collection < ApplicationRecord
  mount_uploader :image, ImageUploader
end
