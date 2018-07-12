class HomeController < ApplicationController
   before_action :create_user

   def apply_color
  	params.permit!
  	params[:selected_grids].each{|g| 
  		 rc = g.split(',') 
  		 @user.square_grids.create(color: params[:hexacode],row: rc[0],column: rc[1])
  	}
  	respond_to do |format|
  		format.js
  	end
  end
 

private 

  def create_user
   @user = User.find_by_ip_address(request.remote_ip)
   if !@user.present?
   user_name = "User-#{Time.now.strftime("%B%Y%d%H%M%S")}" 
   @user = User.create(name: user_name,ip_address: request.remote_ip)
   end
 end


end
