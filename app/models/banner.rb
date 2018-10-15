class Banner < ApplicationRecord
  mount_uploader :image, BannerUploader

  scope :background, -> { order(id: :asc) }
end
