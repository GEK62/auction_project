class Lot < ApplicationRecord
  # include AASM
  belongs_to :user
  has_one :category, through: :category_group
  has_many_attached :images, dependent: :destroy
  has_many :bids, dependent: :destroy
  # has_many :comments, dependent: :destroy, as: :commentable
  # has_many :likes, dependent: :destroy, as: :likeable
  # has_many :liked_users, through: :likes, source: :user, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :start_price, presence: true, numericality: { greater_than: 0 }
  validates :fast_buy_price, presence: true, numericality: { greater_than: 0 }
  validates :end_date, presence: true, numericality: { greater_than: :date_today }
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :images, presence: true
  validates :images, file_size: { less_than_or_equal_to: 4.megabytes, message: 'Please Check File Size' },
                     file_content_type: { allow: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'],
                                          message: 'Please Check File Format' }

  # aasm whiny_transitions: false do
  #   state :draft, initial: true
  #   state :published
  #   state :cancelled
  #   state :won
  #   state :reserve_not_met
  #   state :reserve_met

  #   event :publish do
  #     transitions from: :draft, to: :published
  #   end

  #   event :win do
  #     transitions from: :published, to: :won
  #   end

  #   event :cancel do
  #     transitions from: [:draft, :published, :won], to: :cancelled
  #   end

  #   event :meet_reserve do
  #     transitions from: :published, to: :reserve_met
  #   end
  # end

  # def published
  #   where(aasm_state: :published)
  # end

  def date_today
    Time.zone.today
  end
end
