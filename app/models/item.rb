class Item < ApplicationRecord
  has_many :images
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User"

  accepts_nested_attributes_for :images
end
