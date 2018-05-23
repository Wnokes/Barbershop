class ContactInfosController < ApplicationController

before_action :set_contact_info, only: [:edit, :update]

	def edit
	end

	def update
	  if @contact_info.update(contact_info_params)
	    @contact_info.save
	    redirect_to root_path, notice: 'Your contact_info was edited successfully'
	  else
	    render :edit, notice: "Error updating your contact_info"
	  end
	end

	private

    def set_contact_info
      @contact_info = ContactInfo.first
    end

    def contact_info_params
      params.require(:contact_info).permit(	:email, 
	                                        :phone, 
	                                        :facebook, 
	                                        :instagram,
	                                        :linkedin,
	                                        :twitter,
	                                        :scheduler,
	                                        :about_me)
    end

end
