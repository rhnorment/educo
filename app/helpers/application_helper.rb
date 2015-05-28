module ApplicationHelper

  def title
    @page_title ? "Rivendell Program | #{@page_title.capitalize}" : 'Rivendell Program'
  end

  def render_reasons_cta
    case params[:controller]
    when 'landing_pages'
        nil
      else
        link_to content_tag(:span, 'Learn more'), academics_path, class:'btn-signup button-clear'
    end
  end

end
