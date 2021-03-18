class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def checkout
    before_action :authenticate_user!
  end


  def wishlist
  end

end
