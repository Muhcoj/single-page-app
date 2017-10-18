class WelcomeEntry < ApplicationRecord
	belongs_to :admin
	validates_presence_of :title, :description
end
