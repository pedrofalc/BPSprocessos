class Student < ActiveRecord::Base
	mount_uploader :resume, DocumentsUploaderUploader
	mount_uploader :history, DocumentsUploaderUploader
		belongs_to :selections

   	validates_presence_of :name, :message => "Campo nome não deve ser vazio"
		validates_presence_of :email, :message => "Campo email não deve ser vazio"
		validates_uniqueness_of :email,  :message => "já cadastrado pelo Aluno."
		validates_length_of :email, :maximum => 40,
	 	:too_long => "Tamanho máximo de nome deve ser menor que 30"
	 	validates_length_of :name, :maximum => 40,
		:too_long => "Tamanho máximo de nome deve ser menor que 30"

		#validates :nota1, :numericality => { :greater_than => 0, :less_than_or_equal_to => 10 }
		validates_inclusion_of :nota1, in: 0..10,  on: :update,:message => "Campo deve  ser entre 0 e 10"
		validates_inclusion_of :nota2, in: 0..10,  on: :update,:message => "Campo deve  ser entre 0 e 10"
		validates_inclusion_of :nota3, in: 0..10, on:  :update ,:message => "Campo deve  ser entre 0 e 10"
		

end
