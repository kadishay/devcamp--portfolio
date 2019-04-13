# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "topic #{topic})"
  )
end
puts "3 topics"


10.times do |blog|
  Blog.create!(
    title: "my blog post #{blog}",
    body: "blah blah ..... ",
    topic_id: Topic.last.id
  )
end

puts "10 blog post"

5.times do |skill|
  Skill.create!(
    title: "skill #{skill}",
    percent_utilized: 15
  )
end

puts "5 blog post"

8.times do |prtfolio_item|
  Portfolio.create!(
    title: "port title #{prtfolio_item}",
    subtitle: "ruby",
    body: "body.....",
    main_image: "https://place-hold.it/600X400",
    thumb_image: "https://place-hold.it/350X200"
  )
end

1.times do |prtfolio_item|
  Portfolio.create!(
    title: "port title #{prtfolio_item}",
    subtitle: "angular",
    body: "body.....",
    main_image: "https://place-hold.it/600X400",
    thumb_image: "https://place-hold.it/350X200"
  )
end

puts "9 portfolio post"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Tech #{technology}"
  )
end

puts "3 tech created"