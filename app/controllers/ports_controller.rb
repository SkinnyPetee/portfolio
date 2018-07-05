class PortsController < ApplicationController

  def index
    @portfolio_items = Port.all
  end

  def new
    @portfolio_item = Port.new
    3.times { @portfolio_item.technologies.build }
  end

  def show
    @portfolio_item = Port.find(params[:id])
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
    @portfolio_item = Port.new(params.require(:port).permit(:title,:subtitle, :body,
      technologies_attributes: [:name]))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to ports_path, notice: 'portfolio was successfully create.' }

      else
        format.html { render :new }

      end
    end
  end

  def destroy
    @portfolio_item = Port.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to ports_url, notice: 'item was successfully destroyed.' }

    end
  end


end
