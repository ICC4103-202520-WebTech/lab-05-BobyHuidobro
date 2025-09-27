class Guest < ApplicationRecord

    has_many :reservations

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :document_id, presence: true

    def full_name
        "#{first_name} #{last_name}"
    end
end
