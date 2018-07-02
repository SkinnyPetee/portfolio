class PortsController < ApplicationController

  def index
    @portfolio_items = Port.all
  end

  def new
    @portfolio_item = Port.new
  end

  def edit
    @portfolio_item = Port.find(params[:id])
  end

  def update
    @portfolio_item = Port.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:port).permit(:title,:subtitle, :body))
        format.html { redirect_to ports_path, notice: 'Record was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  def create
    @portfolio_item = Port.new(params.require(:port).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to ports_path, notice: 'portfolio was successfully create.' }

      else
        format.html { render :new }

      end
    end
  end


end
