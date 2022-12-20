class Car < ApplicationRecord
  belongs_to :user

  validates :brand, :model, :price, presence: true
end
