# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 User.create(first_name: 'melissa', email: 'mel@example.com', password: '123', admin: true);

 User.create(first_name: 'nick', email: 'nick@example.com', password: '123', admin: false);
 User.create(first_name: 'jack', email: 'jack@example.com', password: '123', admin: false);
 User.create(first_name: 'jil', email: 'jil@example.com', password: '123', admin: false);
 User.create(first_name: 'bill', email: 'bill@example.com', password: '123', admin: false);
 User.create(first_name: 'dave', email: 'dave@example.com', password: '123', admin: false);
 User.create(first_name: 'matt', email: 'matt@example.com', password: '123', admin: false);
 User.create(first_name: 'will', email: 'will@example.com', password: '123', admin: false);


Event.create(
	name: "Day for night",
	description: "DAY FOR NIGHT is an experiential arts festival featuring digital installations and world-renowned performers, taking place on December 17 and 18 in Houston, Texas. “Day for Night piqued our interest and delivered in spades,” hailed Consequence of Sound, and Department of Dance deemed the inaugural event “the festival of the future.”",
    street_line1: "401 Franklin St",
    start_date: DateTime.httpdate('Sat, 03 Feb 2001 04:05:06 GMT'),
    end_date: DateTime.httpdate('Sat, 03 Feb 2001 22:05:06 GMT'),
    city: "Houston",
    state: "TX",
    zip: "77201",
    country: "US",
    cancelled: false,
    user_id: 2
);

Event.create(
    name: "Nora En Pure + Jonas Blue //",
    description: "Once again we would like to welcome Nora En Pure back to San Francisco for a night of indie dance and deep house disco sounds to heat up the dance floor. Joinging her will be London based producer Jonas Blue, as well as more disco house DJ's to be announced - and we'll be dancing in a great downtown warehouse location. Your Friday night dance party option is here - grab your tickets and we'll see you there!",
    street_line1: "470 Stevenson Street",
    start_date: DateTime.httpdate('Friday, Nov 11 2016 21:05:06 GMT'),
    end_date: DateTime.httpdate('Saturday, Nov 12 2016 02:05:06 GMT'),
    city: "San Francisco",
    state: "CA",
    zip: "94103",
    country: "US",
    cancelled: false,
    user_id: 3
);

Event.create(
    name: "Dubfire At Kingdom",
    description: "From global success in the commercial domain, to equal accomplishments within the underground scene, Dubfire (aka Ali Shirazinia) is an artist whose drive, talent and intuition have placed him in the top tier of electronic music artists in the world. He maintains this position within the industry with an unrelenting work ethic and a determination to innovate, evolve, and entertain. Whether it’s his involvement with Deep Dish, his solo performances at an extensive list of the world’s most influential clubs and festivals, his dubfire:live HYBRID show, running his label SCI+TEC, or simply his exploration of audio and visual technology, Dubfire is in a class of his own.",
    street_line1: "859 O'Farrell Street",
    start_date: DateTime.httpdate('Saturday, Feb 04 2017 21:05:06 GMT'),
    end_date: DateTime.httpdate('Sunday, Feb 05 2017 02:05:06 GMT'),
    city: "San Francisco",
    state: "CA",
    zip: "78701",
    country: "US",
    cancelled: false,
    user_id: 3
);

Event.create(
    name: "Anders Osborne / James Mc Murtry",
    description: "ANDERS OSBORNE: The depth of one’s life is evident through their music. The more sorrow, laughter and adventure experienced, the more interesting curves and crevices are carved into an artist’s songs. The miles traveled leave rich lines in the verses that only time, misadventure, and hard-won wisdom can produce. Anders Osborne is a map of intensely felt, passionately engaged living, a fractured but healing topography of heartbreak and hope for fellow travelers to explore. Osborne’s music is redolent of the blues bathed in West Coast sunshine and brotherly compassion, a torchbearer for rock ‘n’ roll with blood in its veins and a heart in its hands. JAMES McMURTRY: Complicated Game, McMurtry’s first album in six years, has garnered universal acclaim. “At a stage where most veteran musicians fall into a groove or rut, McMurtry continues to surprise,” Texas Music magazine recently noted. “[Complicated Game] is a collection of narratives as sharply observed as any from McMurtry, but with a contemplative depth that comes with maturity.” Indeed, McMurtry’s latest collection spotlights a craftsman in absolutely peak form as he turns from the political toward the personal (“These Things I’ve Come to Know,” “You Got to Me”). “The lyrical theme is mostly about relationships,” the longtime Austin resident says. “It’s also a little about the big old world verses the poor little farmer or fisherman.” Either way, McMurtry spins his stories with a poet’s pen (“Long Island Sound”) and a painter’s precision (“She Loves Me”) throughout.",
    street_line1: "859 O'Farrell Street",
    start_date: DateTime.httpdate('Saturday, Nov 12 2016 22:00:00 GMT'),
    end_date: DateTime.httpdate('Sunday, Nov 13 2017 02:00:00 GMT'),
    city: "San Francisco",
    state: "CA",
    zip: "94101",
    country: "US",
    cancelled: true,
    user_id: 3
);


