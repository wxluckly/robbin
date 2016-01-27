class Admin::WebsController < Admin::BaseController

  def index
    @webs = Web.sort_order.paginate(page: params[:page])
  end

  def new
    @web = Web.new
  end

  def create
    @web = Web.new(web_params)
    respond_to do |format|
      if @web.save
        format.html { redirect_to admin_webs_path }
        format.json { render :json => @json }
      else
        format.html { render action: :edit }
        format.json { render :json => @json }
      end
    end
  end

  def edit
    @web = Web.find(params[:id])
  end

  def update
    @web = Web.find(params[:id])
    flash[:notice] = 'success' if @web.update_attributes(web_params)
    respond_to do |format|
      if @web.save
        format.html { redirect_to admin_webs_path }
        format.js
      else
        format.html { render action: :edit }
      end
    end
  end

  def destroy
    @web = Web.find(params[:id])
    flash[:notice] = "删除成功" if @web.destroy
    respond_to do |format|
      format.html { redirect_to admin_webs_path }
      format.json { render json: {status: true}.to_json }
    end
  end 

  private
  def web_params
    params.require(:web).permit(:title, :url, :content, :cover)
  end

end