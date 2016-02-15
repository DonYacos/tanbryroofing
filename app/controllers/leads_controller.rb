class LeadsController < ApplicationController
  def index
  end

  def new
  	@lead = Lead.new
  end

  def create
  	@lead = Lead.new(lead_params)
  	if @lead.save
  		LeadMailer.welcome_email(@lead).deliver
  		LeadMailer.email_lead(@lead).deliver
  		redirect_to @lead, alert: "Lead created successfully."
  	else
  		redirect_to new_lead_path, alert: "Error creating lead."
  	end
  end

  def lead_params
  	params.require(:lead).permit(:firstName, :lastName, :phone, :email, :residential, :commercial, :streetNumber, :street, :city, :state, :zip, :comment)	
  end

  def show
  	@leads = Lead.find( params[:id] )
  end
end
