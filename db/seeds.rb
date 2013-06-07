# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Jeff Guthrie', :email => 'jeff@emerfit.com', :password => '1234Please', :password_confirmation => '1234Please'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Greg Furuiye', :email => 'greg@emerfit.com', :password => '1234Please', :password_confirmation => '1234Please'
puts 'New user created: ' << user2.name
user3 = User.create! :name => 'Chris Brown', :email => 'chris@emerfit.com', :password => '1234Please', :password_confirmation => '1234Please'
puts 'New user created: ' << user3.name

puts "SETTING UP DEFAULT GYM DAY 1"
gymday1 = Gymday.create(location: 'EmerFit', gymdate: '20-06-2013', workouts: [
  Workout.new(name: 'Helen', program: 'wod', description: '3 rounds Run 400m, 12 Pull-ups, 21 Swings') 
])