class ContactMailer < ActionMailer::Base

  default from: 'admissions@rivendellsanctuary.com'

  def contact_confirmation(contact)
    @contact = contact
    mail to: contact.email, subject: 'Thank you for inquiring about the Rivendell Program'
  end

  def internal_confirmation(contact)
    @contact = contact
    mail to: 'admissions@rivendellsanctuary.com', subject: 'SDC Rivendell WEBSITE INQUIRY -- URGENT'
  end

end
