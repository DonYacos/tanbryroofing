class LeadsController < ApplicationController

  


  def index
    @leads = Lead.all
  end

  def new
  	@lead = Lead.new
  end

  def create
  	@lead = Lead.new(lead_params)
  	if @lead.save
  		LeadMailer.welcome_email(@lead).deliver
  		LeadMailer.email_lead(@lead).deliver
  		redirect_to @lead, alert: "Success :)"
  	else
  		redirect_to new_lead_path, alert: "Oops! Maybe we missed something :( Please try again!"
  	end
  end

  def lead_params
  	params.require(:lead).permit(:firstName, :lastName, :phone, :email, :residential, :commercial, :streetnumber, :street, :city, :state, :zip, :comment)	
  end

  def show
  	@lead = Lead.find( params[:id] )
  end
end
