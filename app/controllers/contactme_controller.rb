class ContactmeController < ApplicationController
	layout "contact", only: [:contactus]
  def contactus
  	#render "colleges/principal"
  	redirect_to colleges_principal_path
  end

end
