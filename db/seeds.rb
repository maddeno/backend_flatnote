# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
User.destroy_all
Note.destroy_all

categories_array = ["Self Care", "Family", "Home Care", "Work", "Social", "Shopping"]

categories_array.map{|category| Task.create(category: category)}

10.times do
    User.create(username: Faker::Movies::LordOfTheRings.character)
end

User.create(username: "Olivia")

Note.create(description: "Buy toilet paper", urgency: 3, status: "pending", date: "none", time: "none", task_id: Task.last.id, user_id: User.last.id)

# t.string "description"
# t.integer "urgency"
# t.string "status"
# t.string "date"
# t.string "time"
# t.integer "task_id"
# t.integer "user_id"