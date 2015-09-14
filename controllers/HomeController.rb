class HomeController < ApplicationController

  get '/' do
    erb :index
  end

  post '/respond' do
    puts params
    @rsvp = ResponsesModel.new
    @rsvp.name = params[:name]
    @rsvp.company = params[:company]
    @rsvp.isattending = params.has_key?('isattending')
    @rsvp.save

    @confirmation_message = 'Thank you!'
    if @rsvp.isattending == true
      @confirmation_message = @confirmation_message + ' I am looking forward to seeing you!'
    else
      @confirmation_message = @confirmation_message + ' I\'m sorry you won\'t make it. Perhaps another time?'
    end

    erb :rsvp_confirmation
  end

end
