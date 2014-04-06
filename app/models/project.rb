class Project < ActiveRecord::Base
	belongs_to :category
	has_attached_file :video
	
	validates :title, presence: true,	length: { minimum: 5 }
	validates :description, presence: true, length: { minimum: 10 }
	validates_attachment_content_type :video, :content_type => /\Aimage\/.*\Z/
	
end
