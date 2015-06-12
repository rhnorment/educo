module ApplicationHelper

  def title
    @page_title ? "Rivendell Program | #{@page_title.titleize}" : 'Rivendell Program'
  end

  def render_hero_cta
    content = link_to 'Request a free visit', new_visit_path, class: 'button-outline'
    content << link_to('Apply now', admissions_apply_now_path, class: 'button') if controller_name == 'site_pages'
    content
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