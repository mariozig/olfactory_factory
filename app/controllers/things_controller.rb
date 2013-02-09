class ThingsController < ApplicationController

  before_filter :find_thing, :only => [:show, :edit, :destroy]

  def create
    @thing = Thing.new(params[:thing])

    if @thing.save
      flash[:success] = "Created!"
      redirect_to things_path
    else
      render 'new'
    end
  end

  def new
    @thing = Thing.new
    3.times { @thing.adjectives.build }
  end

  def index
    @things = Thing.all
  end

  def destroy
    if @thing.destroy
      flash[:notice] = "#{@thing.name} has been removed."
      redirect_to things_path
    else
      render 'new'
    end
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
