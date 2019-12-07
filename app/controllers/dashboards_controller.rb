class DashboardsController < ApplicationController
  def index
    @document_count = Document.count
    @document_department = Document.where(status_id: 2).count
  end
end
