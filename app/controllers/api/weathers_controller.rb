class Api::WeathersController < ApplicationController
  
  def show
    @weather = Weather.order(:created_at).last
    render json: @weather
  end
  
  def new
    text = Weather.get_data
    Weather.create(text: text)
    render json: {message: success}
  end
end
