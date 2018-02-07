class Product < ApplicationRecord
  belongs_to :shop
  validates :name, presence: true, length: {maximum: 30}
  validates :detail, presence: true, length: {maximum: 500}
  mount_uploader :picture, PictureUploader
  validates :price, presence: true, numericality: { only_integer: true}
end
