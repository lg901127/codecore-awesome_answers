class CowsayController < ApplicationController
  def index
  end

  def create
    @cowsay_string = Cowsay.say params[:sentence]
    # render text: params
  end
end
