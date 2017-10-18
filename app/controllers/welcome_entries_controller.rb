class WelcomeEntriesController < ApplicationController
	before_action :set_welcome_entry, only: [:show]

	def index
	end

	def new
		@welcome_entry = WelcomeEntry.new
	end

	def create
		@welcome_entry = WelcomeEntry.new(welcome_entry_params)

		if @welcome_entry.save
			redirect_to @welcome_entry, notice: "The details were created successfully"
		else
			render :new
		end
	end

	def show
	end


	private

		def welcome_entry_params
			params.require(:welcome_entry).permit(:title, :description)
		end

		def set_welcome_entry
			@welcome_entry = WelcomeEntry.find(params[:id])
		end
end
