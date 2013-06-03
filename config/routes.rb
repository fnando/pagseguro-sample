Store::Application.routes.draw do
  root to: "products#index"
  get "checkout/:product_id", to: "products#checkout", as: "checkout"
  post "notifications", to: "notifications#create", as: "notifications"
  get "processing", to: "products#processing", as: "processing"
end
