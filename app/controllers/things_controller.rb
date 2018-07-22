class ThingsController < ApplicationController
  def index
    @things = Thing.all
  end

  def new
    @thing = Thing.new
  end

  def create
    @thing = Thing.new(thing_params)

    if @thing.valid?
      ThingWorker.perform_in(thing_params[:delay].to_i.seconds, thing_params[:name])
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def thing_params
    params.require(:thing).permit(:name, :delay)
  end
end
