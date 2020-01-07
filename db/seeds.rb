# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project_one = Project.create(name: "ReactJS project", deadline: "2020-06-04")
bullet_one = Bullet.create(project_id: 1, content: "Write blog", date: Date.today, category: "task")
bullet_two = Bullet.create(project_id: 1, content: "Fill out bullet journal", date: Date.today, category: "task")
bullet_three = Bullet.create(project_id: 1, content: "Check out turn in links", date: Date.today, category: "event")
bullet_four = Bullet.create(project_id: 1, content: "Add a second event", date: Date.today, category: "event")
bullet_five = Bullet.create(project_id: 1, content: "Last task", date: Date.today, category: "task")
bullet_six = Bullet.create(project_id: 1, content: "This is a note", date: Date.today, category: "note")

project_two = Project.create(name: "Mady Birthday", deadline: "2020-02-08")

project_three = Project.create(name: "Overdue project", deadline: "2019-12-04")
