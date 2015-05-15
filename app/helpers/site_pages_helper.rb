module SitePagesHelper

  def academics_read_more_link(topic)
    link_to 'Read more about this', "/academics/#{topic}", class: 'text-uc text-sm'
  end

end
