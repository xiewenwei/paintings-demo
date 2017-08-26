class PaintingsController < ApplicationController
  def new
    @painting = Painting.new(:gallery_id => params[:gallery_id])
  end

  def create
    @painting = Painting.new(painting_params)
    if @painting.save
      flash[:notice] = "Successfully created painting."
      redirect_to @painting.gallery
    else
      render :new
    end
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update(painting_params)
      flash[:notice] = "Successfully updated painting."
      redirect_to @painting.gallery
    else
      render :edit
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    flash[:notice] = "Successfully destroyed painting."
    redirect_to @painting.gallery
  end

  private

  def painting_params
    params.require(:painting).permit(:gallery_id, :name, :image, :remote_image_url)
  end
end
