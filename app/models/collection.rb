class Collection < ApplicationRecord
  has_many :item
  mount_uploader :image, ImageUploader

  scope :actives, -> { where('items.status_id = ?', 1) }

  def free
    res = self.stock - self.item.size
  end

end
