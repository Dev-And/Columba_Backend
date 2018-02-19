class WelcomeController < ApplicationController
  def index
    render json: {name: 'Sex drugs and rock-n-roll and... ofcourse our fucking Chat'}
  end
end
