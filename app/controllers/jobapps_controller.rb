class JobappsController < ApplicationController
  skip_before_action :authenticate_user!

	def new
		@jobapp = Jobapp.new
	end

	def create
		@jobapp = Jobapp.create(jobapp_params)
		if @jobapp.save
     	redirect_to root_path, :alert => 'Thank you. Your application has been received and will be reviewed at our next hiring cycle.'
    else
      render :new
    end
	end

  private

  def jobapp_params
    params.require(:jobapp).permit(:first_name, :last_name, :email, :phone_num, :where_based, :past_experience, :fav_kids_book, :super_power, :known_employee, :dbs_registered, :self_employed, :upload_cv, :accepts_data_treatment)
  end
end


