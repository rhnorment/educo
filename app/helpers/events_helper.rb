module EventsHelper

  def address_for(event)
    content = event.address1
    content << '<br />' + event.address2 if event.address2.present?
    sanitize(content)
  end

end


