# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project = Project.create(name: "reactjs project 2", deadline: "2020-06-04")
bullet_one = Bullet.create(project_id: 1, content: "Reach out to instructor", date: DateTime.now, category: "task")
bullet_two = Bullet.create(project_id: 1, content: "Fill out bullet journal", date: DateTime.now, category: "task")
bullet_three = Bullet.create(project_id: 1, content: "Add one event", date: DateTime.now, category: "event")
bullet_four = Bullet.create(project_id: 1, content: "Add a second event", date: DateTime.now, category: "event")
bullet_five = Bullet.create(project_id: 1, content: "One more task", date: DateTime.now, category: "task")
bullet_six = Bullet.create(project_id: 1, content: "Final bullet is a note", date: DateTime.now, category: "note")
