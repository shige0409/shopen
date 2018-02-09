class Product < ApplicationRecord
  belongs_to :shop
  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true, length: {maximum: 30}
  validates :detail, presence: true, length: {maximum: 500}
  mount_uploader :picture, PictureUploader
  validates :price, presence: true, numericality: { only_integer: true}
  validate :picture_size
end
