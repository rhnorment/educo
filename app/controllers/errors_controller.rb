class ErrorsController < ApplicationController

  layout 'errors'

  def not_found
    @page_title = 'Page not found.'
    @message = 'You must have accidentally tried to access a page that does not exist on our site.
                Click OK to return to the previous page.'
  end

  def unprocessable
    @page_title = 'Unprocessable entity.'
    @message = 'We cannot process this entity.  Click OK to return to the previous page.'
  end

  def server_error
    @page_title = 'Internal server error.'
    @message = 'Monkeys have invaded our servers.  Click OK to return to the previous page.'
  end

end
