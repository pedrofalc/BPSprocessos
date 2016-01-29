class Student < ActiveRecord::Base
	mount_uploader :resume, DocumentsUploaderUploader
	mount_uploader :history, DocumentsUploaderUploader
		belongs_to :selections
		validates_presence_of :history, :message => "Campo histórico não deve ser vazio"
		validates_presence_of :resume, :message => "Campo Currículo não deve ser vazio"
		validates_presence_of :name, :message => "Campo nome não deve ser vazio"
		validates_presence_of :email, :message => "Campo email não deve ser vazio"
		validates_uniqueness_of :email,  :message => "já cadastrado pelo Aluno."
		validates_length_of :email, :maximum => 40,
	 	:too_long => "Tamanho máximo de nome deve ser menor que 30"
	 	validates_length_of :name, :maximum => 40,
		:too_long => "Tamanho máximo de nome deve ser menor que 30"

	#validates :email, uniqueness:true

end
