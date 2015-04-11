Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
		resources :articles do
			collection do
				match 'search' => 'articles#index', :via => [:get, :post], :as => :search
		end
      resources :comments
    end
  root 'articles#index'
end


