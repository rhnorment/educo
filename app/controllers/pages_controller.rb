class PagesController < ApplicationController

  add_breadcrumb        'Home',     :root_path

  def home
    render layout: 'landing'
    @page_title = 'Welcome to Rivendell'
  end

  def about
    @page_title = 'About us'
    @page_class = 'welcome'
    @sidebar = 'about'
    add_breadcrumb  @page_title, :about_path
  end

  def leadership
    @page_title = 'Leadership Team'
    @page_class = 'team-wrapper'
    @sidebar = 'about'
    @leadership = Staff.corporate
    add_breadcrumb  @page_title, :about_leadership_path
  end

  def investors
    @page_title = 'Our investors'
    @page_class = 'team-wrapper'
    @sidebar = 'about'
    add_breadcrumb  @page_title, :about_investor_path
  end

  def foundation
    @page_title = 'Rivendell Foundation'
    @page_class = 'welcome'
    @sidebar = 'about'
    add_breadcrumb @page_title, :about_foundation_path
  end

  def faculty
    @page_title = 'Our faculty'
    @page_class = 'team-wrapper'
    @sidebar = 'about'
    @faculty = Staff.faculty
    add_breadcrumb  @page_title, :about_faculty_path
  end

  def faq
    @page_title = 'Frequently asked questions'
    @page_class = 'faq-wrapper'
    @sidebar = 'about'
    @faqs = Faq.all
    add_breadcrumb  @page_title, :about_faq_path
  end

  def journey
    @page_title = 'Your journey'
    add_breadcrumb  @page_title, :journey_path
  end

  def term1
    @page_title = 'First term'
    add_breadcrumb  @page_title, :journey_term1_path
  end

  def term2
    @page_title = 'Second term'
    add_breadcrumb  @page_title, :journey_term2_path
  end

  def term3
    @page_title = 'Third term'
    add_breadcrumb  @page_title, :journey_term3_path
  end

  def term4
    @page_title = 'Last term'
    add_breadcrumb  @page_title, :journey_term4_path
  end

  def seeking_truth
    @page_title = 'Seeking truth'
    add_breadcrumb  @page_title, :seeking_truth_path
  end

  def pedagogy
    @page_title = 'Pedagogy'
    add_breadcrumb  @page_title, :seeking_truth_pedagogy_path
  end

  def curriculum
    @page_title = 'Curriculum'
    add_breadcrumb  @page_title, :seeking_truth_curriculum_path
  end

  def method
    @page_title = 'Method'
    add_breadcrumb  @page_title, :seeking_truth_method_path
  end

  def building_character
    @page_title = 'Building character'
    add_breadcrumb  @page_title, :building_character_path
  end

  def residential_living
    @page_title = 'Residential living'
    add_breadcrumb  @page_title, :building_character_residential_living_path
  end

  def experiential_learning
    @page_title = 'Experiential learning'
    add_breadcrumb  @page_title, :building_character_residential_living_path
  end

  def sacrificial_loving
    @page_title = 'Sacrificial loving'
    add_breadcrumb  @page_title, :building_character_sacrificial_loving_path
  end

  def admissions
    @page_title = 'Admissions'
    add_breadcrumb  @page_title, :admissions_path
  end

  def student_attributes
    @page_title = 'Student attributes'
    add_breadcrumb  @page_title, :admissions_student_attributes_path
  end

  def admin_process
    @page_title = 'Process'
    add_breadcrumb  @page_title, :admissions_admin_process_path
  end

  def tuition
    @page_title = 'Tuition & fees'
    add_breadcrumb  @page_title, :admissions_tuition_path
  end

  def financial_aid
    @page_title = 'Financial aid'
    add_breadcrumb  @page_title, :admissions_financial_aid_path
  end

  def apply_now
    @page_title = 'Apply now'
    add_breadcrumb  @page_title, :admissions_apply_now_path
  end
end
