class Article < ActiveRecord::Base
	has_attached_file :fimage, styles: { disp: "840x300", medium: "300x200>", thumb: "250x150>" },:default_url => "missing.jpg"
	has_paper_trail
	validates_attachment_content_type :fimage, content_type: /\Aimage\/.*\Z/
extend FriendlyId
  friendly_id :title, use: :slugged
end
