Rails.application.routes.draw do
  
  	devise_for :usuarios
  	
	resources :tareas do
		resources :comentarios
	end

  	#get 'welcome/index' 
  	get  'bienvenido', to: 'welcome#index' #ruta personalizada

  	root 'welcome#index' #Mi ruta raiz localhost:3000
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
