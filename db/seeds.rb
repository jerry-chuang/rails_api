# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Drop all tables first
Seeker.all.each do |a|
  a.destroy
end
User.all.each do |a|
  a.destroy
end


seeker1 = Seeker.create first_name: 'Alice', last_name: 'Bob', description: 'Looking for help', image: 'https://images.pexels.com/photos/432722/pexels-photo-432722.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', work_type:'laudry', price_range: '25~50', address: 'Vancouver, B.C.'

User.create email: 'test@test.com', password: '12345678'