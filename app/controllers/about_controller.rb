class AboutController < ApplicationController

  def index
    @page_title = 'About Us'
  end

  def faq
    @page_title = 'Frequently Asked Questions'
    @faqs = Faq.all
  end

end
