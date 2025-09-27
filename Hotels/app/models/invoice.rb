class Invoice < ApplicationRecord
    belongs_to :reservation

    validates :reservation_id, presence: true
    validates :nights_subtotal, presence: true
    validates :services_subtotal, presence: true
    validates :tax, presence: true
    validates :total, presence: true
    validates :issued_at, presence: true
    validates :status, presence: true
end
