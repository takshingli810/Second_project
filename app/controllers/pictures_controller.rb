class PicturesController < ApplicationController
  
  def addPictureToGroup
    @group = Group.find(params[:id])
    
    @picture = @group.pictures.new(picture_params)
    if @picture.save 
      redirect_to "/users/#{current_user.id}/groups/#{@group.id}"
      end
    
  end


  private

  def picture_params
    params.require(:picture).permit(:url, :id)
  end

end
