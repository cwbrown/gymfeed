# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Phirst User', :email => 'user@exampled.com', :password => '1234Please', :password_confirmation => '1234Please'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Sekond User', :email => 'user2@exampled.com', :password => '1234Please', :password_confirmation => '1234Please'
puts 'New user created: ' << user2.name