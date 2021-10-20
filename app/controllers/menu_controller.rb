class MenuController < ApplicationController

  def index
    @menu = MenuItem.all
    # render plain: "Hello World!"
    # render html: "<h2>Hello!</h2>".html_safe
    # render json: @menu
  end

  def create
    # render plain: params[:name]
    @@menu[params[:name].to_sym] = params[:price]
    redirect_to '/menu'
  end

  def show
    # raise
    @item = @@menu.find { |k, _v| k == params[:item].to_sym }
    render html: '<h5>Item not found!</h5>'.html_safe, status: 404 if @item.nil?
  end
end
