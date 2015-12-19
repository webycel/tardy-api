# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ email: 'anthony.web91@gmail.com', password: '123123123', password_confirmation: '123123123' }])
teams = Team.create([{ name: 'PDP', user_id: 1 }, { name: 'FEAR', user_id: 1 }])

Member.create(name: 'Anthony', team_id: 1)
Member.create(name: 'Alex', team_id: 2)
