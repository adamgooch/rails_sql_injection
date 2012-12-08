RailsSqlInjection::Application.routes.draw do
  root :to => 'welcome#index'
  match "/friends/find" => "friends#find"
  match "/friends/search" => "friends#search"
  resources :friends
end
