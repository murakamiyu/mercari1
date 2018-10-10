class Item < ApplicationRecord
  has_many :images
  belongs_to :category
  belongs_to :size
  belongs_to :brand
  belongs_to :area

  accepts_nested_attributes_for :images, allow_destroy: true
end
