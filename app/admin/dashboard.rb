ActiveAdmin.register_page 'Dashboard' do

  menu priority: 1

  content do

    h2 'Rivendell Program Web Site Admin Application'

    h3 "You have #{ pluralize(Contact.count, 'contact') }."

    h3 "You have #{ pluralize(Lead.count, 'lead') }."

    h3 "You have #{ pluralize(Visit.count, 'visit') }."

  end

end
