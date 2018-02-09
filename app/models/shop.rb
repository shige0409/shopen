class Shop < ApplicationRecord
  before_save { email.downcase! }
  has_many :products
  validates :name, presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 100 },
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :profile, length: { maximum: 500 }
  has_secure_password
  validates :password, presence: true,
                       length: { minimum: 6 }, allow_nil: true
  mount_uploader :picture, PictureUploader
end
