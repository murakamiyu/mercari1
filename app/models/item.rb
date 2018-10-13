class Item < ApplicationRecord

  MAX_POST_IMAGES_LENGTH = 4

  has_many :images, dependent: :destroy
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :category
  belongs_to :size
  belongs_to :brand, optional: true
  belongs_to :area

  accepts_nested_attributes_for :images, allow_destroy: true

  enum condition: %i(brand_new unused great slight_damaged damaged bad)
  enum shipping_payer: %i(seller buyer)
  enum shipping_method: %i(undecided merkari yu_mail letter_pack mail yamato yu_pack click_post yu_packet)
  enum days_to_ship: %i(a_day_two two_three four_seven)

  validates :images, length: {maximum: MAX_POST_IMAGES_LENGTH}

  def set_main_image
    images.image
  end

  validates :name, 
            :text,
            :price, 
            presence: true
end
