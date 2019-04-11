class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    @user = User.find(params[:user_id])
    if @user.update
      flash[:message] = "User successfully updated!"
      redirect_to user_path
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      render :edit
    end
  end

  # def destroy
  #   @user = User.find(params[:user_id])
  #   @user.destroy
  #   render :user_deleted
  # end
  #
  # def user_deleted
  #   # need to create a view for this
  #   # is a custom route needed too?
  # end


  around_action :catch_not_found

  private

  def user_params
    params.require(:user).permit!
  end

  def catch_not_found
    yield
  rescue ActiveRecord::RecordNotFound
    flash[:message] = "User not found - redirected to main page."
    redirect_to root_path
  end

end
