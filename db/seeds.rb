# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create :email => 'abc@gmail.com'
u2 = User.create :email => '123@gmail.com'
u3 = User.create :email => '456@gmail.com'
puts "#{ User.count } users"


Airplane.destroy_all
a1 = Airplane.create :name => 'Flight1', :row => 'A', :column => '34'
a2 = Airplane.create :name => 'Flight2', :row => 'E', :column => '66'
puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :flight_number => 'QF097', :origin => 'Brisbane', :destination => 'Sydney', :date => '20/02/2020'
f2 = Flight.create :flight_number => 'QF098', :origin => 'Sydney', :destination => 'Perth', :date => '25/09/2020'
puts "#{ Flight.count } flights"

puts "Users and Flights"
f1.users << u1 << u2
f2.users << u1 << u2 << u3
