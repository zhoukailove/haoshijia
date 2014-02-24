class RoomsController < ApplicationController
  def index
    #
    @search = Room.search do
      fulltext params[:query]
      with(:updated_at).less_than(Time.zone.now)
      #with(:available).equal_to(1)
      with(:state).equal_to(1)
      with(:screenshots_count).less_than(10)
      facet(:publish_month)
      with(:publish_month, params[:month]) if params[:month].present?
    end
    @rooms = @search.results
    respond_to do |format|
      format.html { render :action => "index" }
      format.xml  { render :xml => @rooms }
    end

  end





  def show
    @room = Room.find_by_id(params[:id])

  end


end
