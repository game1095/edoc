class SentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @documents = Document.where(status_id: 1)
  end
end
