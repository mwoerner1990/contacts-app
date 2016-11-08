Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contacts' => 'contacts#contacts_method'
  get '/allcontacts' => 'contacts#all_contacts_method'
end
