class PagesController < ApplicationController

  def users
    @users_count = User.count
    gon.watch.users_count = @users_count
  end

  def profile
  end

  def ts3Viewer
  end

  def media
  end

  def accept
    id = params[:id]
    u = User.find(id)
    u.accepted = !u.accepted
    u.save
    redirect_to user_list_path
  end

  def delete
    id = params[:id]
    u = User.find(id).destroy
    redirect_to user_list_path
  end

  def make_admin
    id = params[:id]
    u = User.find(id)
    u.admin = !u.admin
    u.save
    redirect_to user_list_path
  end

end
