class FoldersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @folders = Folder.all
  end

  def new
    @folder = Folder.new
    # @folder = current_user.folder.build
  end

  def create
    @folder = Folder.create(folder_params)
    if @folder.save
      redirect_to folders_path , flash: {notice: 'เพิ่มแฟ้มสมบูรณ์แล้ว'}
    else
      render 'new' , flash: {notice: 'เพิ่มไม่สำเร็จโปรดลองอีกครัง'}
    end
  end

  def edit
    @folder = Folder.find(params[:id])
  end

  def update
    @folder = Folder.find(params[:id])
    if @folder.update(folder_params)
      redirect_to folders_path , flash: {notice: 'แก้ไขแฟ้มสำเร็จแล้ว'}
    else
      render 'edit' , flash: {notice: 'แก้ไขไม่สำเร็จโปรดลองอีกครั้ง'}
    end
  end

  def show
    @folder = Folder.find(params[:id])
    @document_folder = @folder.document
  end
  #
  # def destroy
  #   @folder = Folder.find(params[:id])
  #   if @folder.destroy
  #     redirect_to folders_path , flash: {notice: 'ลบเอกสารเรียบร้อยแล้ว'}
  #   end
  # end

  private
    def folder_params
      params.require(:folder).permit(:number , :name , :description)
    end

end
