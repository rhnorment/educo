class AboutController < ApplicationController

  def index
    @page_title = 'About Us'
  end

  def faq
    @page_title = 'Frequently Asked Questions'
    @first_faq = Faq.first
    @other_faqs = Faq.not_first
  end

end
