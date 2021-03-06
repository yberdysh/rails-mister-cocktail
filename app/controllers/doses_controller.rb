class DosesController < ApplicationController
  before_action :find_cocktail, only: [:create, :new]
  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
    @doses = Dose.all
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @ingredient = Ingredient.find_by(params[:ingredient_name])
    @ingredients = Ingredient.all
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    if params[:dose][:ingredient_id]
      params[:dose][:ingredient_id] = params[:dose][:ingredient_id].to_i
    end
    params.require(:dose).permit(:description, :ingredient_id, :measurement, :amount)
  end
end
