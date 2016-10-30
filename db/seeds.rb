# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'melissa', email: 'mel@example.com', password: '123', admin: true);

User.create(first_name: 'nick', email: 'nick@example.com', password: '123');
User.create(first_name: 'jack', email: 'jack@example.com', password: '123');
User.create(first_name: 'jil', email: 'jil@example.com', password: '123');
User.create(first_name: 'bill', email: 'bill@example.com', password: '123');
User.create(first_name: 'dave', email: 'dave@example.com', password: '123');
User.create(first_name: 'matt', email: 'matt@example.com', password: '123');
User.create(first_name: 'will', email: 'will@example.com', password: '123');

Event.create(name: 'test event', city: 'san francisco', state: 'CA', user_id: 1);
Event.create(name: 'test event2', city: 'las vegas', state: 'NV', user_id: 2);