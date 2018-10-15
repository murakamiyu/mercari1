class User < ApplicationRecord
  has_one :address, dependent: :destroy
  validates :email, presence: true, format: {with: /^\S+@\S+\.\S+$/, multiline: true}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
end
