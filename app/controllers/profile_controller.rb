class ProfileController < ApplicationController
protect_from_forgery

  def profile
  end

  def edit_profile

  end

  def show_yourself
    current_user.hide = 0
    current_user.save
    redirect_to profile_path
  end

  def hide_yourself
    current_user.hide = 1
    current_user.save
    redirect_to profile_path
  end

  def save_nickname
    @new_nickname = params[:nickname]
    if @new_nickname == ""
      flash[:warning] = 'Nickname cannot be empty!'
      redirect_to edit_profile_path
    else
      current_user.tsusername = @new_nickname
      current_user.save
      redirect_to profile_path
    end
  end

  def save_uniqueid
    @new_unique_id = params[:uniqueid]
    current_user.uniqueid = @new_unique_id
    current_user.save
    redirect_to profile_path
  end

end
