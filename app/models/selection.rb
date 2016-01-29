class Selection < ActiveRecord::Base
	mount_uploader :notice, DocumentsUploaderUploader
	has_and_belongs_to_many :teachers
	has_many :students
	validates_presence_of :notice
end
