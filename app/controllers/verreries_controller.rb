class VerreriesController < ApplicationController
  before_action :set_verrerie, only: [:show, :edit, :update, :destroy]
  def index
    @verreries = Verrerie.all
    @verreries = Verrerie.order('created_at DESC')
  end

  def show

  end

  def new
    @verrerie = Verrerie.new

  end

  def create
    @verrerie = Verrerie.create!(verrerie_params)
    redirect_to verreries_path
  end

  def edit

  end

  def update

  end

  def destroy

    @verrerie.destroy
    redirect_to verreries.path
  end

  private

  def set_verrerie
    @verrerie = Verrerie.find(params[:id])
  end

  def verrerie_params
    params.require(:verrerie).permit(:titre, :description, :prix, :photo, :visible)
  end
end
