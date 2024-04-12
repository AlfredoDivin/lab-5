# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create 5 users
5.times do |i|
    User.create(
      name: "User#{i + 1}",
      email: "user#{i + 1}@example.com",
      password: "password#{i + 1}"
    )
  end
  
  # Helper function to generate random text
  def random_text(length)
    (0...length).map { ('a'..'z').to_a[rand(26)] }.join
  end
  
  # Create 10 posts, each associated with a random user
  10.times do |i|
    Post.create(
      title: "Post Title #{i + 1}",
      content: random_text(50), # Generates random text of 50 characters
      user_id: User.pluck(:id).sample, # This selects a random user_id from the ones available
      published_at: Time.at(rand(Time.now.to_i)),
      answers_count: rand(1..100),
      likes_count: rand(1..100)
    )
  end
  
