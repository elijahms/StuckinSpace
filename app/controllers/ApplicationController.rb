class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  post '/newuser' do
    new_user =
      User.create(
        name: params[:username],
        health: 3,
        score: 10_000,
        is_dead: 0,
        room_id: 0,
        email: params[:email],
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

  patch '/user/:id' do
    user_details = User.find(params[:id])
    user_details.update(room_id: params[:room_id], is_dead: true)
    user_details.to_json
  end

  get '/allusers' do
    all_users = User.pluck(:name)
    all_users.to_json
  end

  get '/alluserstats' do
    all_users_stats = User.pluck(:name, :score)
    all_users_stats.to_json
  end


end
