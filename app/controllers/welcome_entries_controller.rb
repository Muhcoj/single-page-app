class WelcomeEntriesController < ApplicationController
	before_action :set_welcome_entry, only: [:show, :edit, :update]
	before_action :authenticate_admin!

	def index
		@welcome_entries = WelcomeEntry.all
	end

	def new
		@welcome_entry = WelcomeEntry.new
	end

	def create
		@welcome_entry = WelcomeEntry.new(welcome_entry_params)
		@welcome_entry.admin_id = current_admin.id

		if @welcome_entry.save
			redirect_to @welcome_entry, notice: "The details were created successfully"
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		if @welcome_entry.update(welcome_entry_params)
			redirect_to @welcome_entry, notice: 'The details were edited successfully'
		else
			render :edit
		end
	end

	private

		def welcome_entry_params
			params.require(:welcome_entry).permit(:title, :description)
		end

		def set_welcome_entry
			@welcome_entry = WelcomeEntry.find(params[:id])
		end
end
