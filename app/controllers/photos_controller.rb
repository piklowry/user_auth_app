class PhotosController < ApplicationController
  before_filter :authenticate_user!
  before_action :mail, :send_to_everyone

  def mail
    UserMailer.new_photo_message_one(@photo, current_user).deliver

  end

  def send_to_everyone
    user = User.all 
    user.each do |user|
    UserMailer.new_photo_message_all(@photo, user).deliver
    end
  end


  def index 
    if params[:tag]
      @photos = Photo.tagged_with(params[:tag])
    else
      @photos = Photo.all
    end
  end

  def new
    @new_photo = Photo.new
  end

  def create
    @new_photo = Photo.new(photo_params)
    if @new_photo.save
      redirect_to photos_path
    else
      redirect_to new_photo_path
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(photo_params)
      redirect_to photos_path
    else
      redirect_to photo_path
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
      if @photo.delete
      redirect_to photos_path
    end
  end

  def search
    @search_results  = Photo.search(params[:search])
    render results_photos_path
  end


  def results
  end 

  def download_photo_pic
    @photo = Photo.find(params[:id])
    file = @photo.photo_pic
    send_file file.path
  end


  private

  def photo_params
    params.require(:photo).permit!
  end 

end