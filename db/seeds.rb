require_relative "data/data"
require 'byebug'

Movie.destroy_all
User.destroy_all

puts "seeding users"


user_one = User.create(email: 'test-user1@restaurant.com', password: 'password')
user_two = User.create(email: 'test-user2@restaurant.com', password: 'password')

puts "seeding countries"


countries.each do |country|
  country_record = Country.create(country)
end 

puts "successfully seeded countries ✅"

puts "seeding directors"

directors.each do |director|
  director_record = Director.create(director)
end 

puts "successfully seeded directors ✅"


puts "seeding genres"

genres.each do |genre|
  genre_record = Genre.create(genre)
end 

puts "successfully seeded genres ✅"



# byebug
puts "seeding movies"

movies.each do |movie|
  movie_reocrd = Movie.create(movie)
end

puts "successfully seeded movies ✅"

puts "seed file done"