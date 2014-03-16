Hello::Application.routes.draw do
  resource :hello_message, only: [:show]
  root 'hello_messages#show'
end
