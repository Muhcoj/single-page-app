require 'rails_helper'

describe 'navigate' do
	describe 'index' do
		it 'can be reached succesfully' do
			visit welcome_entries_path
			expect(page.status_code).to eq(200)
		end

		it 'has a title of Welcome' do
			visit welcome_entries_path
			expect(page).to have_content(/Welcome/)
		end
	end	
end