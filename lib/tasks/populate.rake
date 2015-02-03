namespace   :db do

  require 'faker'
  require 'populator'

  desc    'Erase and fill database'

  task    populate: :environment do

    # make_events
    # make_faqs
    make_testimonials

  end

  # private methods

  def make_events
    Event.populate(10) do |event|
      event.name          = Faker::Company.name,
      event.description   = Faker::Lorem.paragraph,
      event.date          = Faker::Date.forward(90),
      event.start_time    = '6:00 PM',
      event.end_time      = '8:00 PM',
      event.place         = Faker::Company.name,
      event.city          = Faker::Address.city_prefix,
      event.state         = Faker::Address.state,
      event.zip_code      = Faker::Address.zip
    end
  end

  def make_faqs
    Faq.populate(10) do |faq|
      faq.question        = Faker::Lorem.sentence,
      faq.answer          = Faker::Lorem.paragraph
    end
  end

  def make_testimonials
    Testimonial.populate(10) do |testimonial|
      testimonial.name              = Faker::Name.name
      testimonial.location          = Faker::Address.state
      testimonial.description       = Faker::Lorem.paragraph
      testimonial.image_file_name   = 'profile-1.png'
    end
  end

end


