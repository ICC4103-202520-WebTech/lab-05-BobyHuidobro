# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

room1 = Room.create!(
    number: "101",
    room_type: "single",
    price: 100,
    status: "1"
)

room2 = Room.create!(
    number: "907",
    room_type: "single",
    price: 100,
    status: "1"
)

guest1 = Guest.create!(
    first_name: "Jhon",
    last_name: "Doe",
    email: "jdoe@gmail.com",
    phone: "1234567890",
    document_id: "1"
)

guest2 = Guest.create!(
    first_name: "Jane",
    last_name: "Doe",
    email: "janedoe@gmail.com",
    phone: "0987654321",
    document_id: "2"
)

reservation1 = Reservation.create!(
    code: "RES123",
    guest_id: guest1.id,
    room_id: room1.id,
    check_in: Date.today,
    check_out: Date.today + 3.days,
    status: "confirmed",
    adults: 1,
    children: 0
)

reservation2 = Reservation.create!(
    code: "RES456",
    guest_id: guest2.id,
    room_id: room2.id,
    check_in: Date.today + 1.day,
    check_out: Date.today + 4.days,
    status: "confirmed",
    adults: 2,
    children: 1
)

service1 = Service.create!(
    name: "Room Service",
    price: 50,
    is_active: true
)

service2 = Service.create!(
    name: "Spa",
    price: 150,
    is_active: true
)

serviceUsage1 = ServiceUsage.create!(
    reservation_id: reservation1.id,
    service_id: service1.id,
    quantity: 2,
    used_at: DateTime.new(Date.today.year, Date.today.month, Date.today.day, 16, 52),
    note: "Mid afternoon snacks"
)

serviceUsage2 = ServiceUsage.create!(
    reservation_id: reservation2.id,
    service_id: service2.id,
    quantity: 1,
    used_at: Time.new(Date.today.year, Date.today.month, Date.today.day, 20, 30),
    note: "Evening relaxation"
)

invoice1 = Invoice.create!(
    reservation_id: reservation1.id,
    nights_subtotal: 300,
    services_subtotal: 100,
    tax: 19,
    total: 419,
    issued_at: DateTime.now,
    status: "unpaid"
)

invoice2 = Invoice.create!(
    reservation_id: reservation2.id,
    nights_subtotal: 300,
    services_subtotal: 150,
    tax: 19,
    total: 469,
    issued_at: DateTime.now,
    status: "unpaid"
)