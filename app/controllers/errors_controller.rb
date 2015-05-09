class ErrorsController < ApplicationController

  layout 'error'

  def not_found
  end

  def unprocessable
  end

  def server_error
  end
end
