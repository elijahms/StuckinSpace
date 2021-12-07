class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  post '/newuser' do
    new_user = User.create(
      name: params[:username],
      health: 3,
      score: 10000,
      is_dead: 0,
      room_id: 0,
      email: params[:email]
    )
    new_user.to_json
  end

  get '/room/:id' do
    room = Room.find(params[:id])
    room.to_json
  end

  get '/item/:id' do
    items = Room.find(params[:id]).items
    items.to_json
  end

end
