Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'home#dashboard'
 post :apply_color, to: "home#apply_color", as: :apply_color

end
