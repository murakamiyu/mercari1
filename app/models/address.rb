class Address < ApplicationRecord
  belongs_to :user
  validates :postal_code, presence: true, format: {with: /^\d{3}[-]\d{4}$/, multiline: true}
  validates :area, presence: true
  validates :city, presence: true
  validates :address1, presence: true
end
