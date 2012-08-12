class HomeController < ApplicationController
  def index
    page = params[:page]
    render page
  end
end
