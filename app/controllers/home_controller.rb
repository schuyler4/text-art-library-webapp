class HomeController < ApplicationController
  def index
    @art = Art.order('rating').limit(20)
  end
end
