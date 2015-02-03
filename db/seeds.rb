10.times do

  Event.create!([{

    name:             'Event',
    description:      'This is an event about nothing',
    date:             '2015-06-30',
    start_time:       '6:00 PM',
    end_time:         '8:00 PM',
    place:            'Desert Resort',
    city:             'Lexington',
    state:            'Kentucky',
    zip_code:         '55438'

  }])

end
