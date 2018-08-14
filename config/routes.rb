Rails.application.routes.draw do
  get 'posts/index'
  root to: "posts#index"
  devise_for :users
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get ':year/:month/:day', to: redirect("/%{year}/0%{month}/%{day}"), constraints: {year:/\d{4}/, month:/\d{1}/, day:/\d{2}/}   #2018/2/05 -> 2018/02/05

  get ':year/:month/:day', to: redirect("/%{year}/%{month}/0%{day}"), constraints: {year:/\d{4}/, month:/\d{2}/, day:/\d{1}/}   #2018/02/5 -> 2018/02/05

  get ':year/:month/:day', to: redirect("/%{year}/0%{month}/0%{day}"), constraints: {year:/\d{4}/, month:/\d{1}/, day:/\d{1}/}  #2018/2/5 -> 2018/02/05


  get ':year/:month/:day', to: redirect("/20%{year}/%{month}/%{day}"), constraints: {year:/\d{2}/, month:/\d{2}/, day:/\d{2}/}  #18/02/05 -> 2018/02/05

  get ':year/:month/:day', to: redirect("/20%{year}/%{month}/0%{day}"), constraints: {year:/\d{2}/, month:/\d{2}/, day:/\d{1}/} #18/02/5 -> 2018/02/05

  get ':year/:month/:day', to: redirect("/20%{year}/0%{month}/%{day}"), constraints: {year:/\d{2}/, month:/\d{1}/, day:/\d{2}/} #18/2/05 -> 2018/02/05


  get ':year/:month/:day', to: redirect("/20%{year}/0%{month}/0%{day}"), constraints: {year:/\d{2}/, month:/\d{1}/, day:/\d{1}/}#18/2/5 -> 2018/02/05


#  get ':year/:month/:day', to: redirect("/19%{year}/%{month}/%{day}"), constraints: {year:/\d{2}/, month:/\d{2}/, day:/\d{2}/} #18 -> 1918

#  get ':day/:month/:year', to: redirect("/%{day}/0%{month}/%{year}"), constraints: {day:/\d{2}/, month:/\d{1}/, year:/\d{4}/}  #05/02/1995 -> 1995/02/05

  # get ':day/:month/:year', to: redirect("/%{day}/0%{month}/%{year}"), constraints: {day:/\d{2}/, month:/\d{1}/, year:/\d{4}/}  #05/02/1995 -> 1995/02/05

  # get ':year(/:month(/:day))', to: 'posts#index', constraints: {day:/\d{2}/, month:/\d{2}/, year:/\d{4}/}

  get ':year(/:month(/:day))', to: 'posts#index', constraints: {year:/\d{4}/, month:/\d{2}/, day:/\d{2}/}
end
