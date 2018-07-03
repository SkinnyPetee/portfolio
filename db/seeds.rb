3.times do |x|
  Topic.create!(
    title: "Topic #{x}"
  )
end

puts "3 topics created."

10.times do |x|
  Blog.create!(
    title: "My blogpost #{x}",
    body: "This is body of #{x} blogpost",
    topic_id: Topic.last.id
  )
end

5.times do |x|
  Skill.create!(
    title: "Rails skill #{x}",
    percent_utilized: 25
  )
end


8.times do |x|
  Port.create!(
    title: "Portfolio title #{x}",
    subtitle:"Ruby on Rails",
    body: "Lorem ipsum dolor set amo",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
  )
end

1.times do |x|
  Port.create!(
    title: "Portfolio title #{x}",
    subtitle:"Angular",
    body: "Lorem ipsum dolor set amo",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
  )
end
