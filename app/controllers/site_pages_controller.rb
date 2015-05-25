class SitePagesController < ApplicationController

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

  def christianly
    @body_id = 'blogpost'
    @page_title = 'Learn the college core Christianly'
  end

  def sequentially
    @body_id = 'blogpost'
    @page_title = 'Progress through the college core sequentially'
  end

  def communally
    @body_id = 'blogpost'
    @page_title = 'Experience the college core communally'
  end

  def globally
    @body_id = 'blogpost'
    @page_title = 'Journey through the college core globally'
  end

  def critically
    @body_id = 'blogpost'
    @page_title = 'Think through the college core critically'
  end

  def classically
    @body_id = 'blogpost'
    @page_title = 'Approach the college core classically'
  end

  def socratically
    @body_id = 'blogpost'
    @page_title = 'Discuss the college core socratically'
  end

  def holistically
    @body_id = 'blogpost'
    @page_title = 'Practice the college core holistically'
  end

  def student_life
    @body_id = 'features'
    @page_title = 'Student Life'
  end

  def gallery
    @body_id = 'gallery'
    @page_title = 'Rivendell Gallery'
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
