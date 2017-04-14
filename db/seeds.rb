10.times do |blog|
  Blog.create!(
  title: "My Blog post #{blog}",
  body: "Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.")
end

p "10 blogs created"

5.times do |skill|
  Skill.create!(
  title: " Rails #{skill}", percent_utilized: 15)
end

p "5 skills created"
9.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title #{portfolio_item}",
    subtitle: "My great service",
    body: "Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec ullamcorper nulla non metus auctor fringilla. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.",
    main_image: "https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97200&w=600&h=400",
    thumb_image: "https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97200&w=350&h=150"
  )
end
p "9 portfolio items created"
