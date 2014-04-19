class SessionsController < ApplicationController

  	def new
   end

   def create
    user = User.find_by(email: params[:session][:email].downcase)
    #if user && user.authenticate(params[:session][:card_number])
    if user && (user.card_number == params[:session][:card_number].to_i)
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'No User with the specified email and card number'
      render 'new'
    end
  	end

   def destroy
      sign_out
      redirect_to root_url
   end

end
