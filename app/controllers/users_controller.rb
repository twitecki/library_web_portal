class UsersController < ApplicationController

	#before_action :set_user, only: [:show, :index]
	before_action :index

  def show
    @user = User.find(params[:id])
  	@medias = Media.all
  end

  def new
	@user = User.new
  end

  def index 
    @users = User.all
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
	@user.card_number = @user.id 
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Brooks Elementary Library System!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first, :last, :email, :number)
  end

  #def set_user
  #  @user = User.find(params[:id])
  #end

end
