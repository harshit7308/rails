class SearchController < ApplicationController
  def index


    @shoes = Shoe.all

    @shoes = Shoe.page(params[:page]).per(4)

    @shoes = @shoes.where("name LIKE ? ", "%#{params[:name]}%") if params[:name].present?

    @shoes = if params[:price] == 'DESC'
         @shoes.order(price: :desc)
      elsif params[:price] == 'ASC'
          @shoes.order(price: :asc)
      else
        @shoes.order(created_at: :desc)
      end

    @shoes = @shoes.where(suitable: params[:suitable]
      )if params[:suitable].present?

      @shoes = @shoes.where(brand: params[:brand])if params[:brand].present?




  end

  def show
    @shoe = Shoe.find_by(id: params[:id]) if params[:id].present?
  end
end
