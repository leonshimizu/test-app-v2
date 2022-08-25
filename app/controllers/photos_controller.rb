class PhotosController < ApplicationController

  def index
    photos = Photo.all
    render json: photos.as_json
  end

  def create
    photo = Photo.create(
      name: params[:name], 
      width: params[:width],
      height: params[:height]
    )
    render json: photo.as_json
  end

  def show
    photo = Photo.find_by(id: params[:id])
    if photo 
      render json: photo.as_json
    else
      render json: {message: "Photo doesn't exist."}
    end
  end

  def update
    photo = Photo.find_by(id: params[:id])

    if photo
      photo.name = params[:name] || photo.name
      photo.width = params[:width] || photo.width
      photo.height = params[:height] || photo.height
      photo.save
      render json: photo.as_json
    else
      render json: {message: "Photo doesn't exist."}
    end
  end

  def delete
    photo = Photo.find_by(id: params[:id]) 
    photo.destroy
    render json: {message: "Photo was successfully deleted."}
  end
end