class Bid < ApplicationRecord
  belongs_to :lot
  belongs_to :user
  validates :amount, presence: true, numericality: { greater_than: 0 }

  delegate :budget, to: :user, prefix: true
end
