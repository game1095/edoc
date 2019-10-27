class TracksController < ApplicationController
  before_action :authenticate_user!

  def index
    @document_complete = Document.where(status_id: 1)
    @document_uncomplete = Document.where(status_id: 2)
  end
end
