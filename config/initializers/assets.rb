%w(site_pages gallery_photos landing_pages leads contacts events devise active_admin).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.css", "#{controller}.js"]
end