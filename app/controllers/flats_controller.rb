class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
  end

  def create
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
