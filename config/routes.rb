Rails.application.routes.draw do
  get 'images/index'
  root to: "images#index"
end
