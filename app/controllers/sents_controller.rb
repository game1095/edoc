class SentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @sents = Sent.all
  end

  def new
    @sent = Sent.new
  end

  def create
    @sent = Sent.create(sent_params)
    if @sent.save
      Document.where(id: @sent.document).update(status_id: 2)
      # Document.where(id: @sent.document).update(department_id: [@sent.department.ids])
      redirect_to sents_path , flash: {notice: 'จัดส่งเอกสารสมบูรณ์แล้ว'}
    else
      render 'new' , flash: {notice: 'จัดส่งไม่สำเร็จโปรดลองอีกครัง'}
    end
  end

  def edit

  end

  def update

  end

  private
    def sent_params
      params.require(:sent).permit(document_ids:[] , department_ids:[])
    end

end
