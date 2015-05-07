class ContactMailer < ActionMailer::Base

  default from: 'info@rivendellsanctuary.com'

  def contact_confirmation(contact)
    @contact = contact
    mail to: contact.email, subject: 'Thank you for inquiring about SDC Rivendell Program'
  end

  def internal_confirmation(contact)
    @contact = contact
    mail to: 'info@rivendellsanctuary.com', subject: 'SDC Rivendell WEBSITE INQUIRY -- URGENT'
  end

end
