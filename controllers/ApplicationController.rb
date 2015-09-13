class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require()  

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'weddingrsvp'
  )

  set :views, File.expand_path('../../views',__FILE__)

  not_found do
    erb :not_found
  end

end
