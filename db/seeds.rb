# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts 'Clear database'
Flat.destroy_all
puts 'Creating new instances'
10.times do
  new_flat = Flat.new(
    name: Faker::Movies::HarryPotter.location,
    address: Faker::Address.street_address,
    description: Faker::Movies::HarryPotter.quote,
    price_per_night: (50..500).to_a.sample,
    number_of_guests: (2..7).to_a.sample
  )
  new_flat.save
  puts "Flat number #{new_flat.id} created"
end
puts 'Seeded database'
