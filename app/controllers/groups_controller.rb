class GroupsController < ApplicationController

  def index
    @groups = Group.all
    render :index
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    redirect_to user_group_path(@group.user_id, @group.id)
  end

  def show
    @group = Group.find(params[:id])
    @picture = Picture.new
    @pictures = @group.pictures
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
    params.require(:group).permit(:group_name, :user_id, :url)
  end

end
