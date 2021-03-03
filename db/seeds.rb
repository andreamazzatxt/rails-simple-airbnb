puts 'Starting seed'
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Beautiful Flat',
  address: 'Barcelona',
  description: 'Simply beautiful',
  price_per_night: 115,
  number_of_guests: 5
)
Flat.create!(
  name: 'Space Flat',
  address: '10 London W9 1DT',
  description: 'Spacious Flat!!!',
  price_per_night: 50,
  number_of_guests: 3
)
Flat.create!(
  name: 'Beatiful Villa with SeaView',
  address: 'Tulum Mexico',
  description: 'A lovely summer feel for this spacious Villa. ',
  price_per_night: 160,
  number_of_guests: 5
)
puts 'Seed Completed!!'
