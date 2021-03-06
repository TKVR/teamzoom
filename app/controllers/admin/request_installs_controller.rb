class Admin::RequestInstallsController < ApplicationController

load_and_authorize_resource 
  before_filter :authenticate_user!
  layout "admin"
  
  def index
    @requests = RequestInstall.paginate(:order => '"created_at" desc',:per_page => 8, :page => params[:page])
  end


end
