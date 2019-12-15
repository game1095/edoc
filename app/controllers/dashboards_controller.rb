class DashboardsController < ApplicationController
  before_action :authenticate_user!
  # authorize_resource class: DashboardsController
  def index
    @document_count = Document.count
    @document_department = Document.where(status_id: 2).count
    @document_all = Document.where(status_id: 2 )
    # รับเข้าแล้ว
    @document_received = Document.where(status_id: 3 )
    @document_received = Department.find(current_user.department_id).document.where(status_id: 3)
    # เข้าแผนก
    @document_user = Department.find(current_user.department_id).document.where(status_id: 2)
  end

  def accept_doc
    @accept = Document.find_by(params[:id])
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>#{@accept.inspect}"
    if @accept.update(status_id: 3)
      # redirect_back(fallback_location: dashboards_path)
      redirect_to current_page_url
    end
  end
end
