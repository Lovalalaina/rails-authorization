class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car, dependent: :destroy

  validates :start_date, :end_date, presence: true
end
