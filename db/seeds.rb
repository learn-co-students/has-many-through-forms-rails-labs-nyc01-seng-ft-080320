User.destroy_all

10.times do
    User.create(username: Faker::Artist.name, email: Faker::Internet.email)
end


