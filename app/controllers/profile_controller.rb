class ProfileController < ApplicationController
protect_from_forgery

  def profile
    $user = current_user
  end

  def edit_profile
    $user = current_user
  end

  def save_nickname
    @new_nickname = params[:nickname]
    $user.tsusername = @new_nickname
    $user.save
    redirect_to profile_path
  end

  def save_uniqueid
    @new_unique_id = params[:uniqueid]
    $user.uniqueid = @new_unique_id
    $user.save
    redirect_to profile_path
  end

end
