class DashboardsController < ApplicationController
  before_action :authenticate_user!
  authorize_resource class: DashboardsController
  # load_and_authorize_resource
  def index
    @document_count = Document.count
    @document_department = Document.where(status_id: 2).count
  end
end
