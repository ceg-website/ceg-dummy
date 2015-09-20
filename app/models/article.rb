class Article < ActiveRecord::Base
	has_attached_file :fimage, styles: { medium: "300x300>", thumb: "100x100>" }
	has_paper_trail
	validates_attachment_content_type :fimage, content_type: /\Aimage\/.*\Z/
extend FriendlyId
  friendly_id :title, use: :slugged
end
