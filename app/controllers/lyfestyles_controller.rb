class LyfestylesController < ApplicationController
  before_action :set_lyfestyle, only: [:show, :edit, :update, :destroy]
  def index
    @lyfestyles = Lyfestyle.all
    @lyfestyles = Lyfestyle.order('created_at DESC')
  end

  def show
    @lyfestyles = Lyfestyle.all
  end

  def new
    @lyfestyle = Lyfestyle.new
    @lpicture = @lyfestyle.lpictures.build

  end

  def create
    @lyfestyle = Lyfestyle.create!(lyfestyle_params)
    respond_to do |format|
      if @lyfestyle.save
        if params[:lpictures]
          params[:lpictures].each do |lpicture|
            @lyfestyle.lpictures.create(lpicture: lpicture)
          end
        end

        format.html { redirect_to @lyfestyle, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @lyfestyle }
      else
        format.html { render action: 'new' }
        format.json { render json: @lyfestyle.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @lyfestyle.update(table_params)
        if params[:lpictures]
          params[:lpictures].each do |lpicture|
            @lyfestyle.lpictures.create(lpicture: lpicture)
          end
        end

        format.html { redirect_to @lyfestyle, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @lyfestyle }
      else
        format.html { render :edit }
        format.json { render json: @lyfestyle.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @lyfestyle.destroy
    redirect_to lyfestyles_path
  end

  private

  def set_lyfestyle
    @lyfestyle = Lyfestyle.find(params[:id])
  end

  def lyfestyle_params
    params.require(:lyfestyle).permit(:titre, :description, :prix, :lphoto, :visible, :categorie, lpictures_attributes: [:lpicture, :lifestyle_id])
  end
end
