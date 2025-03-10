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
  { full_name: "Tony Stark", phone_number: "212-970-4133", email: "tony.stark@starkindustries.com", notes: "Brilliant inventor and industrialist" },
  { full_name: "Steve Rogers", phone_number: "718-555-1941", email: "steve.rogers@avengers.com", notes: "Often misses old Brooklyn" },
  { full_name: "Natasha Romanoff", phone_number: "917-555-7373", email: "n.romanoff@avengers.com", notes: "Highly skilled spy" },
  { full_name: "Bruce Banner", phone_number: "415-555-1122", email: nil, notes: "Best not to make him angry" },
  { full_name: "Thor Odinson", phone_number: "212-555-8769", email: "thor@asgard.com", notes: "Loves thunderstorms" }
])

