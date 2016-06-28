# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(name: "Justin", email:"justin@curvecommunications.com", password:"password", number: "778-228-6061", organization: "Curve Communications", admin: true)
Course.create(name:"George's invaluable insights", description:"Make millions of dollars with BCYCNA veteran George Affleck's sage advice", image: "http://curvecommunications.com//blog/wp-content/uploads/George1.jpg")
Course.create(name:"Shoults Weekly Shit", description:"We interview BCYCNA past president Tim Shoults to find out what interesting things he's found this this time. Updated weekly.", image: "https://bccommunitynews.com/wp-content/uploads/2012/06/Shoults2-200x300.jpg")