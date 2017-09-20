class Gallery < ApplicationRecord
	belongs_to :admin
	validates_presence_of :image

	mount_uploader :image, PhotoUploader
end
