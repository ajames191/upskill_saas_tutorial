Rails.application.routes.draw do
    root to: 'pages#home' #route for the home page
    get 'about', to: 'pages#about' #get the about page (could use / in front of "about" but don't need it) and routes it to pages#about
end