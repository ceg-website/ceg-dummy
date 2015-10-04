class Gallery < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" , display: "300x200>" }
	has_paper_trail
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
