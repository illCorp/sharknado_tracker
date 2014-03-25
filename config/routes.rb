SharknadoTracker::Application.routes.draw do
  get "home/index"
  root "home#index"
  
  mount Illlocation::Engine => "/illlocation"
end