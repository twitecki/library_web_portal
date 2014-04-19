# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MediaType.create(typename: 'book')

Media.create(title: 'Lord of the Rings', user_id: 1, media_type_id: 1)
Media.create(title: 'Romeo and Juliet', user_id: 1, media_type_id: 1)
Media.create(title: 'A Single Shard', user_id: 1, media_type_id: 1)
