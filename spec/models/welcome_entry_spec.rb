require 'rails_helper'

RSpec.describe WelcomeEntry, type: :model do
  describe 'Creation' do
  	before do
  		@welcome_entry = FactoryGirl.create(:welcome_entry)
  	end

  	it 'can be created' do
  		expect(@welcome_entry).to be_valid
  	end

  	it 'cannot be created without a title and description' do
  		@welcome_entry.title = nil
  		@welcome_entry.description = nil
  		expect(@welcome_entry).to_not be_valid
  	end
  end
end
