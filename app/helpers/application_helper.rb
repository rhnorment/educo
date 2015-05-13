module ApplicationHelper

  def render_reasons_cta
    case params[:controller]
    when 'landing_pages'
        nil
      else
        link_to content_tag(:span, 'Learn more'), academics_path, class:'btn-signup button-clear'
    end
  end

end
