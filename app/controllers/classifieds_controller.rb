class ClassifiedsController < ApplicationController
  before_action :find_classified, only: [:show, :edit, :update, :destroy]
  before_action :find_classifieds, only: [:index]

  def index
    @buying_ads = Classified.where(category: "buy")
    @selling_ads = Classified.where(category: "sell")
    @trading_ads = Classified.where(category: "trade")
  end

  def new
    @classified = Classified.new
    @category = params[:format]
  end

  def create
    classified = Classified.new(classified_params)
    if classified.save
      flash[:notice] = "Classified has been created!"
      redirect_to classified_path(classified)
    else
      flash[:alert] = "Error while submitting! Check values and try again."
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @classified.update(classified_params)
      flash[:notice] = "Classified has been updated"
      redirect_to classified_path(@classified)
    else
      flash[:alert] = "Error while submitting! Check values and try again."
      render :edit
    end
  end

  def destroy
    @classified.destroy
    redirect_to classifieds_path
  end

private

  def classified_params
    params.require(:classified).permit(:category, :subcategory, :price, :rate, :title, :description, :user_id, :image)
  end

  def find_classified
    @classified = Classified.find(params[:id])
  end

  def find_classifieds
    @classifieds = Classified.all
  end

end
