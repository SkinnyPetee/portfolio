
10.times do |x|
  Blog.create!(
    title: "My blogpost #{x}",
    body: "This is body of #{x} blogpost"
  )
end

5.times do |x|
  Skill.create!(
    title: "Rails skill #{x}",
    percent_utilized: 25
  )
end


9.times do |x|
  Port.create!(
    title: "Portfolio title #{x}",
    subtitle:"My subtitle",
    body: "Lorem ipsum dolor set amo",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
  )
end
