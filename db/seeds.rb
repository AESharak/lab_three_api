# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create users
user1 = User.create!(name: "Ahmed Essam", email: "ahmed@example.com")
user2 = User.create!(name: "Mohamed Essam", email: "mohamed@example.com")
user3 = User.create!(name: "Nagy Essam", email: "nagy@example.com")

# Create posts
user1.posts.create!(title: "Observer Pattern", content: "This is the content of the first post.")
user1.posts.create!(title: "Singleton Pattern", content: "This is the content of the second post.")
user2.posts.create!(title: "Decorator Pattern", content: "Mohamed's post content goes here.")
user3.posts.create!(title: "Factory Pattern", content: "Nagy is sharing his thoughts in this post.")
user3.posts.create!(title: "Another Post by Nagy", content: "More content from Nagy.")
