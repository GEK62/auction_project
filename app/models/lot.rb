class Lot < ApplicationRecord
  validates :name, presence: true, length: { maximum: 25 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :start_price, presence: true, numericality: { greater_than: 0 }
  validates :fast_buy_price, presence: true, numericality: { greater_than: 0 }
  validates :end_date, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :images, presence: true
  validates :images, file_size: { less_than_or_equal_to: 4.megabytes, message: 'Please Check File Size' },
                     file_content_type: { allow: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'],
                                          message: 'Please Check File Format' }

  belongs_to :user
  has_one :category, through: :category_group
  has_many_attached :images, dependent: :destroy
  # has_many :bids, dependent: :destroy
  # has_many :comments, dependent: :destroy, as: :commentable
  # has_many :likes, dependent: :destroy, as: :likeable
  # has_many :liked_users, through: :likes, source: :user, dependent: :destroy
end
