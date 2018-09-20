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

topic = Topic.new({name: "Joey's bobo"})
topic.save

topic = Topic.new({name: "Kiki's bobo"})
topic.save

topic = Topic.new({name: "Elly's bobo"})
topic.save

topic = Topic.new({name: "Matt's bobo"})
topic.save

topic = Topic.new({name: "Willy's bobo"})
topic.save

topic = Topic.new({name: "Tootry's bobo"})
topic.save

topic = Topic.new({name: "Michael's bobo"})
topic.save

topic = Topic.new({name: "Donny's bobo"})
topic.save


MeetingTopic.create!([
  {meeting_id: 1, topic_id: 1},
  {meeting_id: 1, topic_id: 6},
  {meeting_id: 2, topic_id: 3},
  {meeting_id: 2, topic_id: 4},
  {meeting_id: 2, topic_id: 7},
  {meeting_id: 3, topic_id: 3},
  {meeting_id: 3, topic_id: 4},
  {meeting_id: 3, topic_id: 5},
  {meeting_id: 4, topic_id: 1},
  {meeting_id: 4, topic_id: 2},
  {meeting_id: 4, topic_id: 7}
])