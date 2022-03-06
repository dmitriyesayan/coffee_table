# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
require 'open-uri'

puts "creating 10 topics"
Topic.create({topic_name: "JavaScript", topic_description: "JavaScript (often shortened to JS) is a lightweight, interpreted, object-oriented language with first-class functions, and is best known as the scripting language for Web pages, but it's used in many non-browser environments as well."})
Topic.create({topic_name: "English", topic_description: "The English language is an Indo-European language in the West Germanic language group. Modern English is widely considered to be the lingua franca of the world and is the standard language in a wide variety of fields, including computer coding, international business, and higher education."})
Topic.create({topic_name: "Spanish", topic_description: "castellano, lit. 'Castilian') is a Romance language of the Indo-European language family that evolved from colloquial spoken Latin in the Iberian Peninsula. Today, it is a global language with nearly 500 million native speakers, mainly in the Americas and Spain."})
Topic.create({topic_name: "Biology", topic_description: "The word biology is derived from the greek words /bios/ meaning /life/ and /logos/ meaning /study/ and is defined as the science of life and living organisms. An organism is a living entity consisting of one cell e.g. bacteria, or several cells e.g. animals, plants and fungi."})
Topic.create({topic_name: "Rails", topic_description: "Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer and HTML, CSS and JavaScript for user interfacing."})
Topic.create({topic_name: "Math", topic_description: "Mathematics is the science and study of quality, structure, space, and change. Mathematicians seek out patterns, formulate new conjectures, and establish truth by rigorous deduction from appropriately chosen axioms and definitions."})
Topic.create({topic_name: "Cooking", topic_description: "Cooking, cookery, or culinary arts is the art, science, and craft of using heat to prepare food for consumption. Cooking techniques and ingredients vary widely, from grilling food over an open fire to using electric stoves, to baking in various types of ovens, reflecting local conditions."})
Topic.create({topic_name: "Home Decor", topic_description: "Home decor is inclusive of physical items and objects (furniture, art, and accessories), placement of physical items and objects, and room colors and materials (flooring, wall coverings, window coverings, and ceilings)."})
Topic.create({topic_name: "HTML", topic_description: "HTML stands for Hypertext Markup Language, and it is the most widely used language to write Web Pages. Hypertext refers to the way in which Web pages (HTML documents) are linked together. Thus, the link available on a webpage is called Hypertext."})
Topic.create({topic_name: "Management", topic_description: "Management is the coordination and administration of tasks to achieve a goal. Such administration activities include setting the organization's strategy and coordinating the efforts of staff to accomplish these objectives through the application of available resources."})
puts "10 topics created!"


puts "creating 10 Experts"
User.create({email: "zachariah.wallace@gmail.com", password: "123456", expert_profile: true, language: "English", description: "bla bla bla", first_name: "Zachariah", last_name: "Wallace"})
User.create({email: "matias.jones@gmail.com", password: "123456", expert_profile: true, language: "Spanish", description: "bla bla bla", first_name: "Matias", last_name: "Jones"})
User.create({email: "donavan.jones@gmail.com", password: "123456", expert_profile: true, language: "English", description: "bla bla bla", first_name: "Donavan", last_name: "Jones"})
User.create({email: "lupita.gonzales@gmail.com", password: "123456", expert_profile: true, language: "German", description: "bla bla bla", first_name: "Lupita", last_name: "Gonzales"})
User.create({email: "davon.vazquez@gmail.com", password: "123456", expert_profile: true, language: "Arabic", description: "bla bla bla", first_name: "Davon", last_name: "Vazquez"})
User.create({email: "carina.barnett@gmail.com", password: "123456", expert_profile: true, language: "English", description: "bla bla bla", first_name: "Carina", last_name: "Barnett"})
User.create({email: "julius.ceasar@gmail.com", password: "123456", expert_profile: true, language: "Greek", description: "bla bla bla", first_name: "Julius", last_name: "Ceasar"})
User.create({email: "catrina.rodrigo@gmail.com", password: "123456", expert_profile: true, language: "Spanish", description: "bla bla bla", first_name: "Catrina", last_name: "Rodrigo"})
User.create({email: "alejandro.gomez@gmail.com", password: "123456", expert_profile: true, language: "English", description: "bla bla bla", first_name: "Alejandro", last_name: "Gomez"})
User.create({email: "david.middleton@gmail.com", password: "123456", expert_profile: true, language: "English", description: "bla bla bla", first_name: "David", last_name: "Middleton"})
puts "10 Experts created!"


puts "creating 16 expert_topics"
ExpertTopic.create({user_id: 1, topic_id: 1})
ExpertTopic.create({user_id: 1, topic_id: 5})
ExpertTopic.create({user_id: 1, topic_id: 9})
ExpertTopic.create({user_id: 2, topic_id: 4})
ExpertTopic.create({user_id: 3, topic_id: 2})
ExpertTopic.create({user_id: 3, topic_id: 3})
ExpertTopic.create({user_id: 4, topic_id: 5})
ExpertTopic.create({user_id: 4, topic_id: 9})
ExpertTopic.create({user_id: 5, topic_id: 6})
ExpertTopic.create({user_id: 5, topic_id: 10})
ExpertTopic.create({user_id: 6, topic_id: 7})
ExpertTopic.create({user_id: 7, topic_id: 8})
ExpertTopic.create({user_id: 8, topic_id: 9})
ExpertTopic.create({user_id: 9, topic_id: 10})
ExpertTopic.create({user_id: 10, topic_id: 10})
ExpertTopic.create({user_id: 10, topic_id: 1})
puts "16 expert_topics created!"

puts "creating 5 Users"
user1 = User.create({email: "ronald.mcdonalds@gmail.com", password: "123456", first_name: "Ronald ", last_name: "McDonalds"})
user1.photo.attach(io: URI.open('https://minimaltoolkit.com/images/randomdata/male/88.jpg'), filename: 'nes.png', content_type: 'image/png')
user1.save
User.create({email: "harry.potter@gmail.com", password: "123456", first_name: "Harry ", last_name: "Potter"})
User.create({email: "hermione.granger@gmail.com", password: "123456", first_name: "Hermione", last_name: "Granger"})
User.create({email: "Madison.smith@gmail.com", password: "123456", first_name: "Madison", last_name: "Smith"})
User.create({email: "kylie.jenner@gmail.com", password: "123456", first_name: "Kylie", last_name: "Jenner"})
puts "10 Users created!"

puts "creating coffee_chats for 2 experts - Feb 19, 2022 all day"
CoffeeChat.create({user_id: 1, availability: true, start: DateTime.new(2022,2,19,0,0,0), end: DateTime.new(2022,2,19,23,59,59)})
CoffeeChat.create({user_id: 2, availability: true, start: DateTime.new(2022,2,19,0,0,0), end: DateTime.new(2022,2,19,23,59,59)})

CoffeeChat.create({user_id: 1, availability: true, start: DateTime.new(2022,3,28,12,0,0), end: DateTime.new(2022,3,28,12,30,0)})
CoffeeChat.create({user_id: 1, availability: true, start: DateTime.new(2022,3,28,12,0,0), end: DateTime.new(2022,3,28,12,30,0)})
CoffeeChat.create({user_id: 1, availability: true, start: DateTime.new(2022,3,28,15,30,0), end: DateTime.new(2022,3,28,14,0,0)})
CoffeeChat.create({user_id: 1, availability: true, start: DateTime.new(2022,3,29,12,0,0), end: DateTime.new(2022,3,29,13,0,0)})
CoffeeChat.create({user_id: 1, availability: true, start: DateTime.new(2022,3,30,19,30,0), end: DateTime.new(2022,3,30,18,0,0)})
CoffeeChat.create({user_id: 1, availability: true, start: DateTime.new(2022,3,30,11,0,0), end: DateTime.new(2022,3,30,11,30,0)})

CoffeeChat.create({user_id: 2, availability: true, start: DateTime.new(2022,3,27,14,0,0), end: DateTime.new(2022,3,27,15,0,0)})
CoffeeChat.create({user_id: 2, availability: true, start: DateTime.new(2022,3,28,16,0,0), end: DateTime.new(2022,3,28,16,30,0)})
CoffeeChat.create({user_id: 2, availability: true, start: DateTime.new(2022,3,28,8,0,0), end: DateTime.new(2022,3,28,8,30,0)})
CoffeeChat.create({user_id: 2, availability: true, start: DateTime.new(2022,3,30,9,30,0), end: DateTime.new(2022,3,30,10,0,0)})
puts "coffee_chat for Feb 19, 2022 all day created!"

puts "creating 5 bookings for 2 experts"
Booking.create({user_id: 11, coffee_chat_id: 1, start: CoffeeChat.find(1).start, end: CoffeeChat.find(1).end, topic_id: CoffeeChat.find(1).user.topics[0].id})
Booking.create({user_id: 12, coffee_chat_id: 1, start: CoffeeChat.find(1).start, end: CoffeeChat.find(1).end, topic_id: CoffeeChat.find(1).user.topics[0].id})
Booking.create({user_id: 11, coffee_chat_id: 1, start: CoffeeChat.find(1).start, end: CoffeeChat.find(1).end, topic_id: CoffeeChat.find(1).user.topics[0].id})
Booking.create({user_id: 11, coffee_chat_id: 2, start: CoffeeChat.find(2).start, end: CoffeeChat.find(2).end, topic_id: CoffeeChat.find(2).user.topics[0].id})
Booking.create({user_id: 13, coffee_chat_id: 2, start: CoffeeChat.find(2).start, end: CoffeeChat.find(2).end, topic_id: CoffeeChat.find(2).user.topics[0].id})
Booking.create({user_id: 11, video_link: "https://d28usdh7.daily.co/6", coffee_chat_id: 3, start: CoffeeChat.find(3).start, end: CoffeeChat.find(3).end, topic_id: CoffeeChat.find(3).user.topics[0].id})
Booking.create({user_id: 12, coffee_chat_id: 4, start: CoffeeChat.find(4).start, end: CoffeeChat.find(4).end, topic_id: CoffeeChat.find(4).user.topics[0].id})
Booking.create({user_id: 11, coffee_chat_id: 5, start: CoffeeChat.find(5).start, end: CoffeeChat.find(5).end, topic_id: CoffeeChat.find(5).user.topics[0].id})
Booking.create({user_id: 11, coffee_chat_id: 6, start: CoffeeChat.find(6).start, end: CoffeeChat.find(6).end, topic_id: CoffeeChat.find(6).user.topics[0].id})
Booking.create({user_id: 13, coffee_chat_id: 11, start: CoffeeChat.find(11).start, end: CoffeeChat.find(11).end, topic_id: CoffeeChat.find(11).user.topics[0].id})
Booking.create({user_id: 14, coffee_chat_id: 10, start: CoffeeChat.find(10).start, end: CoffeeChat.find(10).end, topic_id: CoffeeChat.find(10).user.topics[0].id})
Booking.create({user_id: 15, coffee_chat_id: 9, start: CoffeeChat.find(9).start, end: CoffeeChat.find(9).end, topic_id: CoffeeChat.find(9).user.topics[0].id})

puts "creted 5 bookings for 2 experts!"

puts "creating 5 reviews for 5 bookings / 2 experts"
Review.create({booking_id: 1, content: "I enjoy every class, he is amazing!", rating: 4})
Review.create({booking_id: 2, content: "The expert is a very patient, dedicated and caring teacher. He's really good at understanding how he can help you improve your skills. His lessons are very interactive and interesting. I highly recommend him!", rating: 3})
Review.create({booking_id: 3, content: "After meeting so many experts online and offline both. Finally I met to the best of all tutors and the best tutor is this one !!! The class I had with him was the best ever class. I highly recommend him to everyone. Take my words no one can be the better than him.", rating: 1})
Review.create({booking_id: 4, content: "Expert is a very sympathetic and wise man. I can recommend him for learning. His teaching strategy is a mix of everything as well as exercises.", rating: 3})
Review.create({booking_id: 5, content: "Very good teacher, he helps you to organice your learning and to improve in a practical way.", rating: 5})
puts "created 5 reviews for 2 bookings!"

puts "creating 5 messages for 1 booking"
Message.create({booking_id: 6, message: "hi there, thank you so much for chatting with me", user_id: 11})
Message.create({booking_id: 6, message: "Hello, I would like to mention that this chat may be recorded for the internal training process.", user_id: 1})
Message.create({booking_id: 6, message: "how is it going?", user_id: 11})
Message.create({booking_id: 6, message: "Hi, we would like to let you know that the chat is monitored or recorded for quality assurance.", user_id: 1})
Message.create({booking_id: 6, message: "okay bye", user_id: 11})
puts "created 5 messages for 1 booking!"
