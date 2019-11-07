class TracksController < ApplicationController
  before_action :authenticate_user!

  def index
    @received_document = Document.where(status_id: 1)
    @send_department = Document.where(status_id: 2)
    @complete_document = Document.where(status_id: 3)
  end
end
