require_relative "data/data"

Movie.destroy_all
User.destroy_all

user_one = User.create(email: 'test-user1@restaurant.com', password: 'password')
user_two = User.create(email: 'test-user2@restaurant.com', password: 'password')