Rails.application.routes.draw do
  devise_for :users
    root to: 'pages#home' #route for the home page
    get 'about', to: 'pages#about' #when a customer makes a GET request to /about, we want the rails app to look inside the pages controller and run its "about" action. #could also use / in fromt of about, but it is not necessary
    resources :contacts, only: :create
    get 'contact-us', to: 'contacts#new', as: 'new_contact' #set new contacts controller URL to "contact-us"
end