class Usuario < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	         :recoverable, :rememberable, :validatable

 	has_many :tareas #Un Usuario puede tener muchas tareas
 	has_many :comentarios #Un usuario puede tener muchos comentarios
end
