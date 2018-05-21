class PortfoliosController < ApplicationController
	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

	def index
      @portfolios = Portfolio.all
	end

	def new
		@portfolio = Portfolio.new
	end

	def create
		@portfolio = Portfolio.new(portfolio_params)
	  if @portfolio.save
	    redirect_to portfolio_path(@portfolio)
	  else
	    render :new
	  end
	end

	def edit
	end

	def update
	  if @portfolio.update(portfolio_params)
	    @portfolio.save
	    redirect_to @portfolio, notice: 'Your portfolio was edited successfully'
	  else
	    render :edit, notice: "Error updating your portfolio"
	  end
	end

	def show
		@portfolio = Portfolio.friendly.find(params[:id])
		# @gallery_items = GalleryItem.where(portfolio_id: @portfolio.id)
	end

	def destroy
		if @portfolio.destroy
	    	redirect_to portfolios_path, notice: 'Your portfolio was destroyed successfully'
	  	else
	    	render :show, notice: 'Your portfolio could not be destroyed'
	  	end
	end

	private

    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :description, 
                                        :main_image, 
                                        :thumbnail_image)
    end

end