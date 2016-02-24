class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    redirect_to group_path(@group)
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])    
  end

  def update
    @group = Group.find(params[:id]) 
    @group.update_attributes(group_params)
    @group.save
    redirect_to groups_path
  end
  
  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to users_path
  end

  private 
  def group_params
    params.require(:group).permit(:group_name)
  end

end
