class Item < ApplicationRecord
  has_many :photo, :dependent => :destroy
  belongs_to :collection
  belongs_to :user
  belongs_to :status

  scope :actives, -> { where('status_id = ?', 1) }

  def active
    self.status.name == "enable"
  end
end
