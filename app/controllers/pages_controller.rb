class PagesController < ApplicationController

  add_breadcrumb        'Home',     :root_path

  def home
    @page_title = 'Welcome to Rivendell'
  end

  def about
    @page_title = 'About us'
    add_breadcrumb  'About us', :about_path
  end

  def leadership
    @page_title = 'Leadership'
    add_breadcrumb  'Leadership', :about_leadership_path
  end

  def investors
  end

  def foundation
  end

  def faculty
  end

  def faq
  end

  def journey
  end

  def term1
  end

  def term2
  end

  def term3
  end

  def term4
  end

  def seeking_truth
  end

  def pedagogy
  end

  def curriculum
  end

  def method
  end

  def building_character
  end

  def residential_living
  end

  def experiential_learning
  end

  def sacrificial_loving
  end

  def admissions
  end

  def student_attributes
  end

  def admin_process
  end

  def tuition
  end

  def financial_aid
  end

  def apply_now
  end
end
