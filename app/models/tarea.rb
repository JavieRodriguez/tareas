class Tarea < ApplicationRecord
	belongs_to :usuario#Una tarea pertenece a un usuario
	has_many :comentarios#Una tarea tiene muchos comentarios
	validates :titulo, presence: true
	validates :descripcion, presence: true
end
