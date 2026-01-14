# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



restaurants = [
  { name: "Tanaka", address: "123 Main St, Tokyo", category: "chinese", phone_number: "03-1234-5678" },
  { name: "Machida", address: "456 Roma Ave, Tokyo", category: "italian", phone_number: "03-2345-6789" },
  { name: "YokohamaKakei", address: "789 Shibuya, Tokyo", category: "japanese", phone_number: "03-3456-7890" },
  { name: "Butayama", address: "321 Paris St, Tokyo", category: "french", phone_number: "03-4567-8901" },
  { name: "Brussels Cafe", address: "654 Belgium Rd, Tokyo", category: "belgian", phone_number: "03-5678-9012" }
]

# restaurants.each do |attrs|
#   restaurant = Restaurant.create!(attrs)
#   puts "Created #{restaurant.name}"

#   # 为每个餐厅创建1-3条评论
#   rand(1..3).times do
#     Review.create!(
#       restaurant: restaurant,
#       content: ["Great food!", "Excellent service", "Will come again", "Delicious!", "Highly recommended"].sample,
#       rating: rand(3..5)
#     )
#   end
# end
# puts "Finished! Created #{Restaurant.count} restaurants and #{Review.count} reviews."
restaurants.each do |attrs|
  restaurant = Restaurant.create!(attrs)
  puts "Created #{restaurant.name}"

  rand(1..3).times do
    Review.create!(
      restaurant: restaurant,
      content: ["Really nice", "Good!", "Want try again", "The best dishes", "💩", "Yooooooooo!"].sample,
      rating: rand(3..5)
    )
  end
end
