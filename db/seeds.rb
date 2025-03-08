Customer.create!([
  { full_name: "John Doe", phone_number: "1234567890", email: nil, notes: "VIP customer" },
  { full_name: "Jane Smith", phone_number: "9876543210", email: "jane@example.com", notes: "Frequent buyer" },
  { full_name: "Mike Johnson", phone_number: "5555555555", email: nil, notes: "New customer" },
  { full_name: "Sarah Lee", phone_number: "4444444444", email: "sarah@example.com", notes: "Long-term client" },
  { full_name: "Chris Evans", phone_number: "3333333333", email: "chris@example.com", notes: "Referral from another customer" }
])
