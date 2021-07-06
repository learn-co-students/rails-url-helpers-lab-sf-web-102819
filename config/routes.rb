Rails.application.routes.draw do
  resources :students, only: [:index, :show] #only for the 7 seas
  get "/students/:id/activate", to: "students#activate", as: "activate_student"
end
