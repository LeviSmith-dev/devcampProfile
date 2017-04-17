class PortfoliosController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio_items = Portfolio.all
  end

  def show
  end

  def edit
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfoilios_path, notice: 'Your Portfolio Item is now Live.' }
        # format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        # format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
        # format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        # format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_path, notice: 'portfolio was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @Portfolio_item = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title,:subtitle, :body, :main_image, :thumb_image)
    end
end
