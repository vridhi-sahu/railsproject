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
      redirect_to(images_path, flash: { notice: "Image has been uploaded successfully" })
    else
      render "new"
    end
  end
  
  private 
  
  def img_params
    params.fetch(:image, {}).permit(:picture)
  end
end
