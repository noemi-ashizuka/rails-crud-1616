puts "Cleaning DB..."
Restaurant.destroy_all

puts "Creating 20 restaurants..."

20.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    category: Faker::Restaurant.type,
    rating: rand(0..5)
  )
end

puts "Created #{Restaurant.count} restaurants!"
