# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kdaily = User.new
kdaily.email = "kdaily@gmail.com"
kdaily.encrypted_password = "kdaily123!"
kdaily.save

korea = User.new
korea.email = "kdaily20@gmail.com"
korea.encrypted_password = "testing123"
korea.save