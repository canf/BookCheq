class ComsController < ApplicationController

  def create
    @com = Com.new(com_params)
    @com.book_id = params[:book_id]
    @com.save
    redirect_to book_path(@com.book)

  end

  def com_params
    params.require(:com).permit(:user_id, :body)
  end


end
