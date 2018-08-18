class TareasController < ApplicationController

	before_action :set_tarea, except: [:index,:new,:create]

	#get /tareas/
	def index
		@tareas = Tarea.all #select * from tareas
		#llamar vista tareas/index.html.erb
	end

	#get /tareas/:id
	def show
		#select * from tareas where id= :id
		#llamar vista tareas/show.html.erb
	end

	#get /tareas/new
	def new
		@tarea = Tarea.new
	end

	#post /tareas/
	def create
		@tarea = Tarea.new(tarea_params)

		if @tarea.save #insert into tareas(titulo,descripcion) values (:titulo,:descripcion)		
			redirect_to @tarea
		else
			render :new
		end
	end

	#delete /tareas/:id
	def destroy
		@tarea.destroy #delete from tareas where id= :id
		redirect_to tareas_path
	end

	#get /tareas/:id/edit
	def edit	
	end

	#patch /tareas/:id
	def update
		if @tarea.update(tarea_params)
			#update tareas set titulo= :titulo, descripcion= :descripción where id= :id
			redirect_to @tarea
		else
			render :edit
		end
	end

	private

		def tarea_params
			params.require(:tarea).permit(:titulo,:descripcion)
		end

		def set_tarea
			@tarea = Tarea.find(params[:id]) 
		end
end