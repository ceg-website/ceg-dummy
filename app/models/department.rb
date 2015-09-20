class Department < ActiveRecord::Base
	has_attached_file :dimage, styles: { medium: "300x300>", thumb: "100x100>" }
	has_paper_trail
	validates_attachment_content_type :dimage, content_type: /\Aimage\/.*\Z/
extend FriendlyId
  friendly_id :dname, use: :slugged
end
