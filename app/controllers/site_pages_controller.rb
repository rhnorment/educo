class SitePagesController < ApplicationController

  before_action   :walled_garden,   except: [:academics, :admissions]

  def home
    render layout: 'site'
  end

  def about
    @body_id = 'about-us'
    @page_title = 'About'
  end

  def academics
    @body_id = 'features'
    @page_title = 'Academics'
  end

  def student_life
    @body_id = 'services'
  end

  def admissions
    @body_id = 'features'
    @page_title = 'Admissions'
  end

  def apply_now
    @body_id = 'features'
    @page_title = 'Apply Now'
  end

end
