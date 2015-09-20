class Club < ActiveRecord::Base
has_attached_file :cimage, styles: { medium: "300x300>", thumb: "100x100>" }
	has_paper_trail
	validates_attachment_content_type :cimage, content_type: /\Aimage\/.*\Z/
extend FriendlyId
  friendly_id :cname, use: :slugged
end
