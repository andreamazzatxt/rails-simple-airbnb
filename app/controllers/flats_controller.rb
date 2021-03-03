class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :destory, :edit, :update]
  def index
    if params[:query] && params[:query] != ''
      @flats = Flat.where("name LIKE '%#{params[:query]}%'")
      @title = "Results for #{params[:query]}"
    else
      @flats = Flat.all
      @title = 'All our Flats'
    end
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def edit; end

  def update
    @flat.update(flat_attributes)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    Flat.destroy(params[:id])
    redirect_to flats_path
  end

  def create
    @flat = Flat.new(flat_attributes)
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  private

  def flat_attributes
    params.require('flat').permit(:name, :address, :description, :url, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
