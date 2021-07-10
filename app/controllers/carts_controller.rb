class CartsController < ApplicationController
before_action :authenticate_user!
  def index
    @shoe= Shoe.all
  end

  def show

    @shoe = Shoe.find_by(id: params[:id]) if params[:id].present?
  end
  def delete
  end
end
