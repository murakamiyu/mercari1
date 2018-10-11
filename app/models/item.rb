class Item < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images

  def set_main_image
    images.image
  end
end
