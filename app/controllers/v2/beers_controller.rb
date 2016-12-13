class V2::BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find_by(id: params[:id])
  end

  def create
    @beer = Beer.create(name: params[:name], alcohol_content: params[:alcohol_content] , style: params[:style] , malt: params[:malt] , hop: params[:hop])

    render :show
  end

  def update
    @beer = Beer.find_by(id: params[:id])
    @beer.assign_attributes(name: params[:name], alcohol_content: params[:alcohol_content] , style: params[:style] , malt: params[:malt] , hop: params[:hop])
    @beer.save

    render :show
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer.destroy

    render json: {message: "Beer #{params[:id]} successfully deleted!"}
  end
end
