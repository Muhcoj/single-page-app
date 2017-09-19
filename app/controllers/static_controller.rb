class StaticController < ApplicationController
  def homepage
  	@galleries = Gallery.all
  end
end