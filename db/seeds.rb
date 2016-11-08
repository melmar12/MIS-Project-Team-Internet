# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(first_name: 'melissa', email: 'mel@example.com', password: '123', admin: true);

# User.create(first_name: 'nick', email: 'nick@example.com', password: '123', admin: false);
# User.create(first_name: 'jack', email: 'jack@example.com', password: '123', admin: false);
# User.create(first_name: 'jil', email: 'jil@example.com', password: '123', admin: false);
# User.create(first_name: 'bill', email: 'bill@example.com', password: '123', admin: false);
# User.create(first_name: 'dave', email: 'dave@example.com', password: '123', admin: false);
# User.create(first_name: 'matt', email: 'matt@example.com', password: '123', admin: false);
# User.create(first_name: 'will', email: 'will@example.com', password: '123', admin: false);

Event.create(
	name: "Day for night",
	description: "DAY FOR NIGHT is an experiential arts festival featuring digital installations and world-renowned performers, taking place on December 17 and 18 in Houston, Texas. “Day for Night piqued our interest and delivered in spades,” hailed Consequence of Sound, and Department of Dance deemed the inaugural event “the festival of the future.”",
    street_line1: "401 Franklin St",
    start_date: DateTime.parse("09/01/2009 17:00"),
    end_date: DateTime.parse("09/01/2009 17:00"),
    city: "Houston",
    state: "TX",
    zip: "77201",
    country: "US",
    cancelled: false,
    user_id: 2
);



