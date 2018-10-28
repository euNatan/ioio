class Collection < ApplicationRecord
  has_many :item
  mount_uploader :image, ImageUploader

  def free
    res = self.stock - self.item.size
  end
end
