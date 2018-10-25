class Item < ApplicationRecord
  has_many :photo, :dependent => :destroy
  belongs_to :collection
  belongs_to :user
end
