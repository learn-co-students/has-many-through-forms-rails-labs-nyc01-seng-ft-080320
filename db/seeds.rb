# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(name: "style")
Category.create(name: "sports")
Category.create(name: "travel")

Post.create(title: "Weekend Soccor Games", content: "I do not care really!")
Post.create(title: "Fashion Week", content: "Is canceled this year and online!")
Post.create(title: "Fall Styles", content: "Will be posted soon!")

PostCategory.create(post_id: 1, category_id: 2)
PostCategory.create(post_id: 2, category_id: 1)
PostCategory.create(post_id: 3, category_id: 1)

User.create(username: "slurio", email: "slur@gmail.com")

Comment.create(content: "Great article! I agree", post_id: 1, user_id: 1)
Comment.create(content: "Actually, this is a very bias article", post_id: 1, user_id: 1)
Comment.create(content: "Can't wait for this article to be posted!", post_id: 3, user_id: 1)