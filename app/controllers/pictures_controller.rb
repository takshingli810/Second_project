class PicturesController < ApplicationController
  
  def addPictureToGroup
    @group = Group.find(params[:id])
    @picture = @group.pictures.new(picture_params)
    if @picture.save 
      redirect_to user_group_path(@group)
    end
    
  end


  private

  def picture_params
    params.require(:picture).permit(:url)
  end

end
