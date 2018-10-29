class Item < ApplicationRecord
  has_many :photo, :dependent => :destroy
  belongs_to :collection
  belongs_to :user
  belongs_to :status

  def active
    self.status.name == "enable"
  end
end
