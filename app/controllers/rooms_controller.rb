class RoomsController < ApplicationController
  def index
    @rooms = Room.where(state: true).paginate(page: params[:page])
  end

  def show
    p"---------"
    logger.info(params[:id])
    @room = Room.find_by_id(params[:id])
  end
end
