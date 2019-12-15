class SentsController < ApplicationController
  authorize_resource class: SentsController
  def index
    @documents = Document.where(status_id: 2)
  end

  def new
    @sent = Document.find(Document.last.id)
  end

  private
    def sent_params
      params.permit(:status_id , :duedate , :document_id , department_ids:[] )
    end
end
