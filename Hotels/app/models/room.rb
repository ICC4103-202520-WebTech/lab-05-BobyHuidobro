class Room < ApplicationRecord
    has_many :reservations

    validates :number, presence: true
    validates :room_type, presence: true
    validates :price, presence: true, numericality: {greater_than_or_equal_to: 0 }
    validates :status, presence: true
end
