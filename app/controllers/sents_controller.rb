class SentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @documents = Document.where(status_id: 2)
    @sent = Sent.all
  end

  def new
    @sent = Sent.new
  end

  def create
    @sent = Sent.create(sent_params)
    id = @sent.document_ids

    if @sent.save
      Document.where(id: id).update(status_id:2)
      redirect_to sents_path , flash: {notice: 'จัดส่งเอกสารแล้ว'}
    else
      render 'new' , flash: {notice: 'จัดส่งเอกสารไม่สำเร็จ'}
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def show

  end

  private
    def sent_params
      params.require(:sent).permit(document_ids:[] , department_ids:[])
    end

end
