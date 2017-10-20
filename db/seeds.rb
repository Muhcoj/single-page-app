# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@admin = Admin.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 Admin created"

10.times do |gallery|
	#Gallery.create!(title: "Some title", image: "default.png")
	#Gallery.create!(title: "Some title", image: File.open(File.join(Rails.root, 'tendvtrans.png')))
end

WelcomeEntry.create(title: 'Welkom', description: 'asdfasdfasdfasdf lkjjlkjjhh')