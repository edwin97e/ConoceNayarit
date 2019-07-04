Rails.application.routes.draw do
  resources :sitecategories
  get 'terrestres', to: "terrestres#index"
  resources :lands
  
  get 'autobus', to: "autobus#index"
  resources :buses
  
  get 'vuelos', to: "vuelos#index" 
  resources :flights
  
  get 'rutas', to: "rutas#index"
  get 'rutas/:id', to: "rutas#show", as: "ruta"
  resources :routes
  
  get 'playas', to: "playas#index"
  get 'playas/:id', to: "playas#show", as: "playa"
  resources :beaches

  get 'hoteles', to: "hoteles#index"
  get 'hoteles/:id', to: "hoteles#show",as: "hotel"
  resources :hotels

  get 'restaurante', to: "restaurante#index"
  get 'restaurante/:id', to: "restaurante#show", as: "restaurant"
  resources :restaurants
  
  get 'sitios_turisticos', to: "sitios_turisticos#index"
  get 'sitios_turisticos/:id', to: "sitios_turisticos#show", as: "sitio_turistico"
  resources :sites
  
  resources :eventcategories
  get 'pueblos_magicos', to: "pueblos_magicos#index"
  get 'pueblos_magicos/:id', to: "pueblos_magicos#show", as: "pueblo_magico"
  resources :magictowns

  get 'eventos', to: "eventos#index"
  get 'eventos/:id', to: "eventos#show", as: "evento"
  resources :events

  mount Ckeditor::Engine => '/ckeditor'
  
  get 'comollegar', to: "welcome#comollegar"
  get 'clima', to: "welcome#clima"
  get 'nayarit', to: "welcome#nayarit"
  get 'admin', to: "admin#admin"
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  