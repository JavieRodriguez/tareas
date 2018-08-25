class TareasMailer < ApplicationMailer

	def notificacion(tarea)
		@tarea=tarea
		mail to: 'rtjuansebastian@gmail.com',
		subject: 'Mensaje desde pagina de tareas'
	end
end
