class DocumentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @documents = Document.where(status_id: 1)

  end

  def new
    @document = Document.new
    @document = current_user.document.build
  end

  def create
    @document = Document.create(document_params)
    @document = current_user.document.build(document_params)
    if @document.save
      redirect_to documents_path , flash: {notice: 'เพิ่มเอกสารสมบูรณ์แล้ว'}
    else
      render 'new' , flash: {notice: 'เพิ่มไม่สำเร็จโปรดลองอีกครัง'}
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    if @document.update(document_params)
      redirect_to documents_path , flash: {notice: 'แก้ไขเอกสารแล้ว'}
    else
      render 'edit' , flash: {notice: 'แก้ไขไม่สำเร็จโปรดลองอีกครั้ง'}
    end
  end

  def show
    @document = Document.find(params[:id])
    @document_type = @document.type
    # DEBUG
    a = @document.type.where(id: @document_type.ids)
    a.each do |n|
      return @document_relate = n.document
    end

  end

  def destroy
    @document = Document.find(params[:id])
    if @document.destroy
      redirect_to documents_path , flash: {notice: 'ลบเอกสารเรียบร้อยแล้ว'}
    end
  end

  def sent_document
    @document = Document.find_by(params[:id])
    @query = User.where(department_id: [@document.department.ids])
    @email = @query.each { |n| n.email}
      if @document.update(status_id: 2)
        redirect_to sents_path
      else
        redirect_to documents_path
      end
  end

  def dashboard

  end

  private
    def document_params
      params.require(:document).permit(:document_number , :date ,:number , :dated , :title , :detail , :status , :folder_id , :type_id , :status_id ,  :confidential_id , :department_id , :remark , images:[] , type_ids:[])
    end

end
