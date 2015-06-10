class GalleryPhotosController < ApplicationController

  before_action   :walled_garden if :production?

  def index
  end

  def show
  end
end
