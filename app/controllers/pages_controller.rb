class PagesController < ApplicationController

  def home
    render layout: 'landing'
    @page_title = 'Welcome to Rivendell'
  end

  def about
    @page_title = 'About us'
    @page_class = 'welcome'
    @sidebar = 'about'
  end

  def leadership
    @page_title = 'Leadership Team'
    @page_class = 'team-wrapper'
    @section_crumb = 'about'
    @sidebar = 'about'
    @leadership = Staff.corporate
  end

  def investors
    @page_title = 'Our investors'
    @page_class = 'team-wrapper'
    @section_crumb = 'about'
    @sidebar = 'about'
  end

  def foundation
    @page_title = 'Rivendell Foundation'
    @page_class = 'welcome'
    @section_crumb = 'about'
    @sidebar = 'about'
  end

  def faculty
    @page_title = 'Our faculty'
    @page_class = 'team-wrapper'
    @section_crumb = 'about'
    @sidebar = 'about'
    @faculty = Staff.faculty
   end

  def faq
    @page_title = 'Frequently asked questions'
    @page_class = 'faq-wrapper'
    @section_crumb = 'about'
    @sidebar = 'about'
    @faqs = Faq.all
  end

  def accreditation
    @page_title = 'Accreditation'
    @page_class = 'welcome'
    @section_crumb = 'about'
    @sidebar = 'about'
  end

  def journey
    @page_title = 'Your journey'
    @page_class = 'welcome'
    @sidebar = 'journey'
  end

  def term1
    @page_title = 'First term - Theos'
    @page_class = 'welcome'
    @section_crumb = 'journey'
    @sidebar = 'journey'
  end

  def term2
    @page_title = 'Second term - Cosmos'
    @page_class = 'welcome'
    @section_crumb = 'journey'
    @sidebar = 'journey'
  end

  def term3
    @page_title = 'Third term - Anthropos'
    @page_class = 'welcome'
    @section_crumb = 'journey'
    @sidebar = 'journey'
  end

  def term4
    @page_title = 'Final term - Ethnos'
    @page_class = 'welcome'
    @section_crumb = 'journey'
    @sidebar = 'journey'
  end

  def seeking_truth
    @page_title = 'Seeking truth'
    @page_class = 'welcome'
    @sidebar = 'seeking_truth'
  end

  def pedagogy
    @page_title = 'Rivendell Pedagogy'
    @page_class = 'welcome'
    @sidebar = 'seeking_truth'
  end

  def curriculum
    @page_title = 'Rivendell Curriculum'
    @page_class = 'welcome'
    @sidebar = 'seeking_truth'
  end

  def courses
    @page_title = 'Courses'
    @page_class = 'welcome'
    @sidebar = 'seeking_truth'
    @courses = Course.all.order(identifier: :asc)
  end

  def course
    @course = Course.find(params[:id])
    respond_to { |format| format.js }
  end

  def building_character
    @page_title = 'Building character'
    @page_class = 'welcome'
    @sidebar = 'building_character'
  end

  def residential_living
    @page_title = 'Residential living'
    @page_class = 'welcome'
    @sidebar = 'building_character'
  end

  def experiential_learning
    @page_title = 'Experiential learning'
    @page_class = 'welcome'
    @sidebar = 'building_character'
  end

  def sacrificial_loving
    @page_title = 'Sacrificial loving'
    @page_class = 'welcome'
    @sidebar = 'building_character'
  end

  def admissions
    @page_title = 'Admissions'
    @page_class = 'welcome'
    @sidebar = 'admissions'
  end

  def student_attributes
    @page_title = 'Student attributes'
    @page_class = 'welcome'
    @sidebar = 'admissions'
  end

  def admin_process
    @page_title = 'Process'
    @page_class = 'welcome'
    @sidebar = 'admissions'
  end

  def tuition
    @page_title = 'Tuition & fees'
    @page_class = 'welcome'
    @sidebar = 'admissions'
  end

  def financial_aid
    @page_title = 'Financial aid'
    @page_class = 'welcome'
    @sidebar = 'admissions'
  end

  def apply_now
    @page_title = 'Apply now'
    @page_class = 'welcome'
    @sidebar = 'admissions'
  end
end
