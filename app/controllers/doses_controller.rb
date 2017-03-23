class DosesController < ApplicationController
before_action :set_cocktail

  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@dose)
    else
      render :new
    end
  end

private

  def destroy
  end

  # @cocktail = Cocktail.find(params[:cocktail_id])
end
