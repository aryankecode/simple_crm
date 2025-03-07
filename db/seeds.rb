# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Customer.create!([
  { full_name: "Kyle Geske", phone_number: "204-644-4444", email: "kgeske@rrc.ca", notes: "Loyal customer" },
  { full_name: "Daisy Glutton", phone_number: "204-555-1234", email: "daisy.glutton@mailinator.com", notes: "Prefers email contact" },
  { full_name: "Wally Glutton", phone_number: "204-555-9887", email: "wally.glutton@mailinator.com", notes: "Loves discounts" },
  { full_name: "Missy Mismatch", phone_number: "204-555-2342", email: nil, notes: "Hasn't provided email" }
])
