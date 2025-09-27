class Reservation < ApplicationRecord
    belongs_to :guest
    belongs_to :room
    has_many :service_usages

    validates :code, presence: true, uniqueness: {message: "Ya existe una reserva con este código"}
    validates :guest_id, presence: true
    validates :room_id, presence: true
    validates :check_in, presence: true
    validates :check_out, presence: true
    validates :status, presence: true
    validates :adults, presence: true
    validates :children, presence: true
end
