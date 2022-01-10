class Lot < ApplicationRecord
  include AASM
  belongs_to :user, optional: true
  has_one :category, through: :category_group
  has_many_attached :images, dependent: :destroy
  has_many :bids, dependent: :destroy
  # has_many :comments, dependent: :destroy, as: :commentable
  after_create :log_lots_details

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :start_price, presence: true, numericality: { greater_than: 0 }
  validates :fast_buy_price, presence: true, numericality: { greater_than: 0 }
  validates :end_date, date: { after: Proc.new { Time.now },
                        before: Proc.new { Time.now + 1.year } }
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :images, presence: true
  validates :images, file_size: { less_than_or_equal_to: 4.megabytes, message: 'Please Check File Size' },
                     file_content_type: { allow: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'],
                                          message: 'Please Check File Format' }

  aasm do
    state :published, initial: true
    state :cancelled
    state :won

    event :cancel do
      transitions from: :published, to: :cancelled
    end

    event :win do
      transitions from: :published, to: :won
    end
  end

  def date_today
    Time.zone.today
  end

  def self.to_csv
    attributes = %w[id name description start_price fast_buy_price end_date user_id category_id created_at updated_at]

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.find_each do |lot|
        csv << lot.attributes.values_at(*attributes)
      end
    end
  end

  def log_lots_details
    LotLoggerJob.perform_later(self)
  end
end
