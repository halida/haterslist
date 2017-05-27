class ItemsController < ApplicationController
  load_and_authorize_resource param_method: :resource_params

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @item.update(resource_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private

  def resource_params
    params.require(:item).permit(:description)
  end

end
