class MembershipsController < ApplicationController
  
  before_action :logged_in?
  def index 
    @user = User.find(params[:user_id])
    @group = @user.groups
    render :index
  end

  def create 
    @user = current_user
    @group = Group.find(params[:group_id])
    # @group.users << @user
    @user.groups.push(@group)
    redirect user_group_path(@user)
  end

end
