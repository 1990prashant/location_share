# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

locations = [[77.018840, 28.600410], [77.2128, 28.6456], [85.756932, 26.159144], [88.3468, 22.5851], [91.7454, 26.1417]]

5.times do |index|
  user = User.find_or_initialize_by(email: "user-#{index}@example.com")
  if user.new_record?
    user.password = '123456'
    user.password_confirmation = '123456'
    user.username = "user-#{index}"
    user.locations.new(lon: locations[index][0], lat: locations[index][1])
    user.save
  end
end