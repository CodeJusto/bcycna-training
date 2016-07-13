# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'securerandom'


Student.create(name: "Justin", email:"justin@curvecommunications.com", password:"password", number: "778-228-6061", organization: "Curve Communications", is_admin: true, key: SecureRandom.hex)
Student.create(name: "User", email:"test@curvecommunications.com", password:"password", number: "778-228-6061", organization: "Curve Communications", key: SecureRandom.hex)
Course.create(name:"Publisher Course", description:"Make millions of dollars with BCYCNA veteran George Affleck's sage advice", role: "publisher", image: "newspaper.jpg", status: "Published")
Course.create(name:"Editor Course", description:"We interview BCYCNA past president Tim Shoults to find out what interesting things he's found this this time. Updated weekly.", role: "reporter", image: "handshake.jpg", status: "Published")
Course.create(name:"Reporter Course", description:"Make millions of dollars with BCYCNA veteran George Affleck's sage advice", role: "editor", image: "newspaper.jpg", status: "Published")
Course.create(name:"Sales Course", description:"We interview BCYCNA past president Tim Shoults to find out what interesting things he's found this this time. Updated weekly.", role: "sales", image: "handshake.jpg", status: "Published")
Lesson.create(course_id: 2, name:"Cool thing I found today", featured_image: "http://www.honduras.com/wp-content/uploads/2012/05/newspaper.jpg", content:"Bacon ipsum dolor amet kevin sausage landjaeger porchetta, strip steak pig pork belly doner corned beef chuck meatball ball tip sirloin shankle. Brisket kevin swine prosciutto. Kevin turducken sirloin cow pork chop. Turkey meatball corned beef alcatra bacon tri-tip ground round landjaeger bresaola. Jowl porchetta frankfurter, tenderloin tongue cow pig chicken boudin corned beef prosciutto alcatra kevin filet mignon bresaola. Short ribs frankfurter bacon pork chop tail ground round capicola filet mignon pork belly landjaeger.")
Lesson.create(course_id: 2, name:"How to seal the deal", featured_image: "http://i.telegraph.co.uk/multimedia/archive/03219/handshake1_3219777b.jpg", content:"Bacon ipsum dolor amet kevin sausage landjaeger porchetta, strip steak pig pork belly doner corned beef chuck meatball ball tip sirloin shankle. Brisket kevin swine prosciutto. Kevin turducken sirloin cow pork chop. Turkey meatball corned beef alcatra bacon tri-tip ground round landjaeger bresaola. Jowl porchetta frankfurter, tenderloin tongue cow pig chicken boudin corned beef prosciutto alcatra kevin filet mignon bresaola. Short ribs frankfurter bacon pork chop tail ground round capicola filet mignon pork belly landjaeger.")