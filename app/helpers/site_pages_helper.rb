module SitePagesHelper

  def academics_read_more_link(topic)
    link_to 'Read more', "/academics/#{topic}", class: 'text-uc text-sm'
  end

end
