# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  title = Faker::Movie.title
  overview = Faker::Movie.quote
  poster_url = 'https://www.nowtv.now.com/wp-content/uploads/2020/01/Spider-Man-No-Way-Home-Extended-Version-mobile.jpg'
  rating = rand(1..10)
  movie = Movie.new(title: title, overview: overview, poster_url: poster_url, rating: rating)
  movie.save
end
