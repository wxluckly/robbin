class WebsController < ApplicationController
  def index
    @webs = Web.sort_order.paginate(page: params[:page], per_page: 12)
  end
end
