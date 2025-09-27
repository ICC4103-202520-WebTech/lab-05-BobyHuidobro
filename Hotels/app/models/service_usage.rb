class ServiceUsage < ApplicationRecord
    belongs_to :reservation
    belongs_to :service

    validates :reservation_id, presence: true
    validates :service_id, presence: true
    validates :quantity, presence: true
    validates :used_at, presence: true
    validates :note, presence: true
end
