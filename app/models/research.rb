class Research < ActiveRecord::Base
	has_attached_file :rimage, styles: { medium: "300x300>", thumb: "100x100>" }
	has_paper_trail
	validates_attachment_content_type :rimage, content_type: /\Aimage\/.*\Z/
extend FriendlyId
  friendly_id :rname, use: :slugged
end
