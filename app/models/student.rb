class Student < ActiveRecord::Base
	mount_uploader :resume, DocumentsUploaderUploader
	mount_uploader :history, DocumentsUploaderUploader
		belongs_to :selections

end
