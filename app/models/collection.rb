class Collection < ApplicationRecord
  has_many :items
  mount_uploader :image, ImageUploader

  scope :actives, -> { where('items.status_id = ?', 1) }

  def free
    res = self.stock - self.items.actives.size
  end

end
