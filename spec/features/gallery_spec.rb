require 'rails_helper'

describe 'navigation' do
	describe 'index' do 
		it 'can be reached successfully' do
			visit galleries_path
			expect(page.status_code).to eq(200)
		end

		it 'has an image' do
			visit galleries_path
			expect(page.find('#image_gallery')['src']).to have_content 'default.png'
		end
	end
end