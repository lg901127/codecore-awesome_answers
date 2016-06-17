class BillSpliterController < ApplicationController
  def index
  end

  def submit
    @amount = params[:amount].to_f
    @tax = params[:tax].to_f
    @tip = params[:tip].to_f
    @num_of_people = params[:num_of_people].to_i
    @amount_per_person = @amount * (1 + @tax/100) * (1 + @tip/100) / @num_of_people
    render :index
  end
end
