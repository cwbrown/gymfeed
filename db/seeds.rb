# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user1 = User.create! :name => 'Jeff Guthrie', :email => 'jeff@emerfit.com', :password => '1234Please', :password_confirmation => '1234Please'
puts 'New user created: ' << user1.name
user2 = User.create! :name => 'Greg Furuiye', :email => 'greg@emerfit.com', :password => '1234Please', :password_confirmation => '1234Please'
puts 'New user created: ' << user2.name
user3 = User.create! :name => 'Chris Brown', :email => 'chris@emerfit.com', :password => '1234Please', :password_confirmation => '1234Please'
puts 'New user created: ' << user3.name

Admin.create! :name => 'admin', :email => 'admin@emerfit.com', :password => '1234Please', :password_confirmation => '1234Please'


puts "SETTING UP DEFAULT GYM DAY YESTERDAY"
gymday1 = Gymday.create!(location: 'EmerFit', gym_date: Date.yesterday, 
	workout: Workout.new(name: 'Jackie', program: 'wod', description: 'Row 1000m, 50 Thrusters, 25 Pull-ups'))

gymday1.scores.create!(value: '5:02', completed: DateTime.yesterday, scaled: false, personal_record: false, user: user1)
gymday1.scores.create!(value: '6:30', completed: DateTime.yesterday, scaled: false, personal_record: true, user: user2)
gymday1.scores.create!(value: '7:02', completed: DateTime.yesterday, scaled: true, personal_record: false, user: user3)

puts "SETTING UP DEFAULT GYM DAY TODAY"
gymday2 = Gymday.create!(location: 'EmerFit', gym_date: Date.today, 
	workout: Workout.new(name: 'Helen', program: 'wod', description: '3 rounds Run 400m, 12 Pull-ups, 21 Swings'))

gymday2.scores.create!(value: '7:00', completed: DateTime.now , scaled: true, personal_record: false, user: user1)
gymday2.scores.create!(value: '7:15', completed: DateTime.now, scaled: false, personal_record: false, user: user2)
gymday2.scores.create!(value: '8:11', completed: DateTime.now, scaled: false, personal_record: true, user: user3)

puts "SETTING UP DEFAULT GYM DAY TOMORROW"
gymday3 = Gymday.create!(location: 'EmerFit', gym_date: Date.tomorrow, 
	workout: Workout.new(name: 'Half Cindy', program: 'wod', description: '10:00 AMRAP 5 Pull-ups, 10 Push-ups, 15 Squats'))

gymday3.scores.create!(value: '9', completed: DateTime.tomorrow, scaled: false, personal_record: false, user: user1)
gymday3.scores.create!(value: '7', completed: DateTime.tomorrow, scaled: false, personal_record: false, user: user2)
gymday3.scores.create!(value: '8', completed: DateTime.tomorrow, scaled: false, personal_record: false, user: user3)