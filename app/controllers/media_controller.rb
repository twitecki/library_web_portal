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
			@media = Media.find(params[:media][:id])
			id = @media.id
         if !signed_in?
				flash.now[:error] = 'You have to sign in first'	
				render 'sessions/new'
         end
		   if signed_in? 
				if @media.user_id == nil then
					@media.user_id = @current_user.id
					@media.save
					flash.now[:success] = 'Book Reserved!'
				else
					flash.now[:error] = 'Sorry this book is already reserved!'
				end
				render 'browse_media'
			end
   end
	
	def search_results
		@media_results = Media.search(params[:search]).order("title")
	end

	def browse_media
	end

end
