# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

puts "creating 10 Experts"
User.create({email: "zachariah.wallace@gmail.com", password: "123456", expert_profile: true, language: "English", topic: "JavaScript", description: "bla bla bla", first_name: "Zachariah", last_name: "Wallace"})
User.create({email: "matias.jones@gmail.com", password: "123456", expert_profile: true, language: "Spanish", topic: "JavaScript", description: "bla bla bla", first_name: "Matias", last_name: "Jones"})
User.create({email: "donavan.jones@gmail.com", password: "123456", expert_profile: true, language: "English", topic: "JavaScript", description: "bla bla bla", first_name: "Donavan", last_name: "Jones"})
User.create({email: "lupita.gonzales@gmail.com", password: "123456", expert_profile: true, language: "German", topic: "Biology", description: "bla bla bla", first_name: "Lupita", last_name: "Gonzales"})
User.create({email: "davon.vazquez@gmail.com", password: "123456", expert_profile: true, language: "Arabic", topic: "Rails", description: "bla bla bla", first_name: "Davon", last_name: "Vazquez"})
User.create({email: "carina.barnett@gmail.com", password: "123456", expert_profile: true, language: "English", topic: "Math", description: "bla bla bla", first_name: "Carina", last_name: "Barnett"})
User.create({email: "julius.ceasar@gmail.com", password: "123456", expert_profile: true, language: "Greek", topic: "Math", description: "bla bla bla", first_name: "Julius", last_name: "Ceasar"})
User.create({email: "catrina.rodrigo@gmail.com", password: "123456", expert_profile: true, language: "Spanish", topic: "Biology", description: "bla bla bla", first_name: "Catrina", last_name: "Rodrigo"})
User.create({email: "alejandro.gomez@gmail.com", password: "123456", expert_profile: true, language: "English", topic: "Cooking", description: "bla bla bla", first_name: "Alejandro", last_name: "Gomez"})
User.create({email: "david.middleton@gmail.com", password: "123456", expert_profile: true, language: "English", topic: "Home Decor", description: "bla bla bla", first_name: "David", last_name: "Middleton"})
puts "10 Experts created!"

puts "creating 5 Users"
User.create({email: "ronald.mcdonalds@gmail.com", password: "123456", first_name: "Ronald ", last_name: "McDonalds"})
User.create({email: "harry.potter@gmail.com", password: "123456", first_name: "Harry ", last_name: "Potter"})
User.create({email: "hermione.granger@gmail.com", password: "123456", first_name: "Hermione", last_name: "Granger"})
User.create({email: "Madison.smith@gmail.com", password: "123456", first_name: "Madison", last_name: "Smith"})
User.create({email: "kylie.jenner@gmail.com", password: "123456", first_name: "Kylie", last_name: "Jenner"})
puts "10 Users created!"

puts "creating coffee_chats for 2 experts - Feb 19, 2022 all day"
CoffeeChat.create({user_id: 1, topic: User.find(1).topic, availability: true, start: DateTime.new(2022,2,19,0,0,0), end: DateTime.new(2022,2,19,23,59,59)})
CoffeeChat.create({user_id: 2, topic: User.find(2).topic, availability: true, start: DateTime.new(2022,2,19,0,0,0), end: DateTime.new(2022,2,19,23,59,59)})
puts "coffee_chat for Feb 19, 2022 all day created!"

puts "creating 5 bookings for 2 experts"
Booking.create({user_id: 11, coffee_chat_id: 1, start: DateTime.new(2022,2,19,12,0,0), end: DateTime.new(2022,2,19,13,0,0), video_link: "#"})
Booking.create({user_id: 12, coffee_chat_id: 1, start: DateTime.new(2022,2,19,15,0,0), end: DateTime.new(2022,2,19,16,0,0), video_link: "#"})
Booking.create({user_id: 11, coffee_chat_id: 1, start: DateTime.new(2022,2,19,19,0,0), end: DateTime.new(2022,2,19,20,0,0), video_link: "#"})
Booking.create({user_id: 11, coffee_chat_id: 2, start: DateTime.new(2022,2,19,22,0,0), end: DateTime.new(2022,2,19,23,0,0), video_link: "#"})
Booking.create({user_id: 13, coffee_chat_id: 2, start: DateTime.new(2022,2,19,11,0,0), end: DateTime.new(2022,2,19,12,0,0), video_link: "#"})
puts "creted 5 bookings for 2 experts!"

puts "creating 5 reviews for 5 bookings / 2 experts"
Review.create({booking_id: 1, content: "very nice", rating: 4})
Review.create({booking_id: 2, content: "it was ok", rating: 3})
Review.create({booking_id: 3, content: "it was bad", rating: 1})
Review.create({booking_id: 4, content: "idk...", rating: 3})
Review.create({booking_id: 5, content: "amazing! definitely worth it", rating: 5})
puts "created 5 reviews for 2 bookings!"

puts "creating 5 messages for 1 booking"
Message.create({booking_id: 1, message: "hi im the student", user_id: 11})
Message.create({booking_id: 1, message: "hi im the Expert!", user_id: 1})
Message.create({booking_id: 1, message: "how is it going?", user_id: 11})
Message.create({booking_id: 1, message: "good and u?", user_id: 1})
Message.create({booking_id: 1, message: "okay bye", user_id: 11})
puts "created 5 messages for 1 booking!"
