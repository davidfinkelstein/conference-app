Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # get "/first_speaker" => "speakers#first_speaker"
    # get "/last_speaker" => "speakers#last_speaker"
    # get "/speaker" => "speakers#speaker"
    # get "/first_name" => "speakers#first_name"


    #REST

    get "/speakers" => "speakers#index"
    post "/speakers" => "speakers#create"
    get "/speakers/:id" => "speakers#show"
    patch "/speakers/:id" => "speakers#update"
    delete "speakers/:id" => "speakers#destroy"

    get "/meetings" => "meetings#index"
    post "/meetings" => "meetings#create"
    get "/meetings/:id" => "meetings#show"
    patch "/meetings/:id" => "meetings#update"
    delete "meetings/:id" => "meetings#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    post "/meeting_topics" => "meeting_topics#create"


    # get "/first_meeting" => "meetings#first_meeting"
  end

end
