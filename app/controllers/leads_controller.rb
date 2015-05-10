class LeadsController < ApplicationController

  layout 'opt_in'

  def new
    @lead = Lead.new
  end

  def create
    lead = Lead.new(lead_params)

    if lead.save
      @message = 'Please download your brochure'
    else
      render :new
    end
  end

  private

    def lead_params
      params.require(:lead).permit(:first_name, :last_name, :email, :phone)
    end

end
