class WarehousesController < ApplicationController
  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new 
    @warehouse = Warehouse.new 
  end

  def create
    @warehouse = Warehouse.new(name: params[:warehouse][:name],
                               code: params[:warehouse][:code],
                               city: params[:warehouse][:city],
                               area: params[:warehouse][:area],
                               address: params[:warehouse][:address],
                               cep: params[:warehouse][:cep],
                               description: params[:warehouse][:cep])

    if @warehouse.save 
      return redirect_to warehouse(@warehouse.id)
    end

    render :new
  end
end
