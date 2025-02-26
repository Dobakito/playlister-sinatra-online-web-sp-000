class ArtistsController < ApplicationController

  get '/artists' do
    @artists = Artist.all.sort_by {|artist| artist.name }
    erb :'/artists/index'
  end

  get '/artists/:slug' do
    @artists = Artist.find_by_slug(params[:slug])
    erb :'/artists/show'
  end

end
