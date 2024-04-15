Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "model_quest#step1"
   get "step2", to: "model_quest#step2"
   get "step3", to: "model_quest#step3"
   get "step4", to: "model_quest#step4"
   get "step5", to: "model_quest#step5"
   get "final", to: "model_quest#step5"
end
