class ProfileController < ApplicationController
protect_from_forgery

  def profile

  end

  def edit_profile

  end

  def save_nickname
    @new_nickname = params[:nickname]
    current_user.tsusername = @new_nickname
    current_user.save
    redirect_to profile_path
  end

  def save_uniqueid
    @new_unique_id = params[:uniqueid]
    current_user.uniqueid = @new_unique_id
    current_user.save
    redirect_to profile_path
  end

end
