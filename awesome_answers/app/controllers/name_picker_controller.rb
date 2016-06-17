class NamePickerController < ApplicationController
  def index
  end

  def submit
    @names = params[:names].split(',')
    @name_shuffled = @names.shuffle
    @winner = @name_shuffled[0]
    render :index
  end
end
