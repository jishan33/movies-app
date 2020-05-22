class UsersController < ApplicationController
  def index
    @users = User.all.sort_by{|i| i.id}
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_list_path
  end
end
