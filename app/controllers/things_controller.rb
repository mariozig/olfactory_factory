class ThingsController < ApplicationController

  before_filter :find_thing, :only => [:show, :edit]

  def create
    @thing = Thing.new(params[:thing])

    if @thing.save
      redirect_to things_path
    else
      render 'new'
    end
  end

  def update
  end

  def new
    @thing = Thing.new
  end

  def index
    @things = Thing.all
  end

  def destroy
  end

  def edit
  end

  def show
  end

  #-----------------
  # This probably isn't necessary but just thinking of a way to dry up
  # the code
  private
    def find_thing
      @thing = Thing.find(params[:id])
    end

end
