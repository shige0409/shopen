Shop.create!(name:  "Sample Shop",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

50.times do |n|
  name  = Faker::App.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  Shop.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

=begin
  shops = Shop.order(:created_at).take(6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
=end
