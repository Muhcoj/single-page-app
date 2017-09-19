require 'rails_helper'

describe 'navigate' do
	describe 'index' do 
		it 'can be reached successfully' do
			visit galleries_path
			expect(page.status_code).to eq(200)
		end

		it 'has an image' do
			visit galleries_path
			expect(page.find('#image_gallery')['src']).to have_content 'default.png'
		end

		it 'has a list of images' do 
			image1 = Gallery.create(title: "Some Title", image: "default.png")
			image2 = Gallery.create(title: "Some Other Title", image: "test.png")
			visit galleries_path
			expect(page).to have_content(/default.png|test.png/)
		end
	end

	describe 'creation' do 
		before do
			visit new_gallery_path
		end
		it 'has a new form that can be reached' do
			expect(page.status_code).to eq(200)
		end

		it 'can be created from new form page' do
			fill_in 'gallery[title]',  with: 'Some Title'
			fill_in 'gallery[image]', with: 'default.png'
			click_on 'Save'

			expect(page).to have_content('Some Title')
		end
	end
end