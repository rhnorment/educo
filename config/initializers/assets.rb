%w(pages contacts subscriptions errors devise active_admin).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.css", "#{controller}.js"]
end