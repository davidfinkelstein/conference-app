# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


speaker = Speaker.new({first_name: "Sally", last_name: "Johnson", email: "sallyj@gml.com"})
speaker.save

meeting = Meeting.new({title:"Poopies",agenda:"Put in toilets",time:"7:34 am"})
meeting.save

meeting = Meeting.new({title:"Willy",agenda:"Chocolate Factory",time:"9:00 am"})
meeting.save

meeting = Meeting.new({title:"Jim",agenda:"Justice In Mind meeting",time:"10:30 am"})
meeting.save