require_relative "data/data"


Movie.destroy_all
User.destroy_all

puts "seeding users"


user_one = User.create(email: 'test-user1@movie.com', password: '333password')
user_two = User.create(email: 'test-user2@movie.com', password: '333password')
user_admin = User.create(email: 'admin@restaurant.com', password: '333password', admin: true)


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



puts "seeding casts"

casts.each do |cast|
  cast_record = Cast.create(cast)
end 

puts "successfully seeded casts ✅"



puts "seeding movies"

movies.each do |movie|
  movie_record = Movie.create(movie.except(:picture))
  movie_record.picture.attach(io: File.open("app/assets/images/seed/#{movie[:picture]}"), filename: "#{movie[:picture]}", content_type: 'image/jpg')
end 

puts "successfully seeded movies ✅"




puts "seeding genre movies"

genre_movies.each do |item|
  genre_movies_reocrd = GenreMovie.create(item)
end

puts "successfully seeded genre-movies ✅"



puts "seeding cast movies"

cast_movies.each do |item|
  cast_movies_reocrd = CastMovie.create(item)
end

puts "successfully seeded cast-movies ✅"




puts "seed file done"


