class GalleriesController < ApplicationController
	before_action :set_gallery, only: [:show, :edit]
	before_action :authenticate_user!

	def index
		@galleries = Gallery.all
	end

	def new
		@gallery = Gallery.new
	end

	def create
		@gallery = Gallery.new(gallery_params)
		@gallery.admin_id = current_admin.id

		if @gallery.save
			redirect_to root_path, notice: 'Foto Toegevoegd'
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		if
			@gallery.update(gallery_params)
		  redirect_to @gallery, notice: 'Foto gewijzigd!'
	  else
	  	render :edit
	end


	private

	  def gallery_params
	    params.require(:gallery).permit(:title, :image)
	  end

	  def set_gallery
	  	@gallery = Gallery.find(params[:id])
	  end
end
