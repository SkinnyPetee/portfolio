class PortsController < ApplicationController

  def index
    @portfolio_items = Port.all
  end

  def new
    @portfolio_item = Port.new
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
