class SitePagesController < ApplicationController

  def home
    render layout: 'site'
  end

  def about
    @body_id = 'about-us'
  end

  def academics
    @body_id = 'features'
  end

  def student_life
    @body_id = 'services'
  end

  def admissions
  end

  def apply_now
  end

end
