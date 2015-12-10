class CategorizationsController < ApplicationController

  def new
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = Categorization.new
  end

  def create
    @categorization = Categorization.new(categor_params)
    @categorization.save
    redirect_to root_path
  end

  def categor_params
    params.require(:categorization).permit(:category_id).merge(kitten_id:params[:kitten_id])
  end

end
