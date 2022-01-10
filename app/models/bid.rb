class Bid < ApplicationRecord
  belongs_to :lot
  belongs_to :user
  validates :amount, presence: true, numericality: { greater_than: :last_price }

  def last_price
    lot.bids.last.try(:amount) || lot.start_price
  end

  delegate :budget, to: :user, prefix: true
end
