class TempConvertorController < ApplicationController
  def index
  end

  def submit
    @temperature_in_c = params[:temperature].to_i
    @temperature_in_f = @temperature_in_c * 9 / 5 + 32
    # render text: @temperature_in_f
  end
end
