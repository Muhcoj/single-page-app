require 'rails_helper'

RSpec.describe Gallery, type: :model do
  describe "Creation" do 
  	before do
  		@gallery = Gallery.create(title: "Some title", image: "some_image.jpg")
  	end	

		it "can be created" do
  		expect(@gallery).to be_valid
  	end

  	it "cannot be created without an image" do
  		@gallery.image = nil
  		expect(@gallery).to_not be_valid
  	end
  end
end
