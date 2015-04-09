module PagesHelper

  def current_branch(name)
    request.fullpath.include?(name) ? 'active' : ''
  end

end
