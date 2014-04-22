class MediaController < ApplicationController

	before_action :index
	
	def index
		@medias = Media.all
	end

	def show
    @media = Media.find(params[:id])
	 current_media = @media
   end

	def create
         if !signed_in?
				flash.now[:error] = 'You have to sign in first'	
				render 'sessions/new'
         end
		   if signed_in?
				Media.create(media_type_id: 1, user_id: @current_user.id)
				flash.now[:success] = 'Book Reserved!'
				render 'browse_media'
			end
   end

	def browse_media
	end

end
