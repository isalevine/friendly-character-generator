class BaseCharactersController < ApplicationController

  def index
    @base_characters = BaseCharacter.all
  end

  def show
    @base_character = BaseCharacter.find(params[:id])
  end

  def new
    @base_character = BaseCharacter.new
  end

  def create
    @base_character = BaseCharacter.new(base_character_params)
    if @base_character.save
      # session[:base_character_id] = @base_character.id
      redirect_to base_character_path(@base_character)
    else
      flash[:error] = @base_character.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @base_character = BaseCharacter.find(params[:base_character_id])
  end

  def update
    @base_character = BaseCharacter.find(params[:base_character_id])
    if @base_character.update
      flash[:message] = "BaseCharacter successfully updated!"
      redirect_to user_path
    else
      flash[:error] = @base_character.errors.full_messages.to_sentence
      render :edit
    end
  end

  # def destroy
  #   @base_character = BaseCharacter.find(params[:user_id])
  #   @base_character.destroy
  #   render :base_character_deleted
  # end
  #
  # def base_character_deleted
  #   # need to create a view for this
  #   # is a custom route needed too?
  # end


  around_action :catch_not_found

  private

  def base_character_params
    params.require(:base_character).permit!
  end

  def catch_not_found
    yield
  rescue ActiveRecord::RecordNotFound
    flash[:message] = "BaseCharacter not found - redirected to main page."
    redirect_to root_path
  end

end
