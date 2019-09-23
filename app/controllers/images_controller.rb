class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  def new
    @image = Image.new
  end
  def create
    @image = Image.new(img_params)
    if @image.save
      flash[:notice] = "Image has been uploaded successfully"
      redirect_to images_path
    else
      flash[:error] = "Image could not be uploaded"
      render :new
    end
  end
  
  private 
  def img_params
    params.require(:image).permit(:picture)
  end
end
