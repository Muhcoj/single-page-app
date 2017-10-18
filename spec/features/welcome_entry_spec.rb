require 'rails_helper'

describe 'navigate' do
	describe 'index' do
		before do
			visit welcome_entries_path
		end

		it 'can be reached succesfully' do
			expect(page.status_code).to eq(200)
		end

		it 'has a title of Welcome' do
			expect(page).to have_content(/Welcome/)
		end
	end	

	describe 'creation' do
		before do
			admin = Admin.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
    	login_as(admin, :scope => :admin)
			visit new_welcome_entry_path
		end

		it 'has a new form that can be reached' do
			expect(page.status_code).to eq(200)
		end

		it 'can be created from new form page' do
			fill_in 'welcome_entry[title]', with: "Hello Welcome"
			fill_in 'welcome_entry[description]', with: "Some description text goes here..."
			click_on "Save"

			expect(page).to have_content("Some description text goes here")
		end

		it 'will have a user associated it' do
		  fill_in 'welcome_entry[title]', with: "Hello Welcome"
			fill_in 'welcome_entry[description]', with: "Some description text goes here with user association..."
			click_on "Save"

		  expect(Admin.last.welcome_entries.last.description).to eq("Some description text goes here with user association...")
		end
	end
end