class Gallery < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "800x400>", thumb: "250x150>" , display: "250x150>" }
	has_paper_trail
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
