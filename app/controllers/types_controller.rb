class TypesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  
  def index
    @types = Type.all
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.create(type_params)
    if @type.save
      redirect_to types_path , flash: {notice: 'เพิ่มประเภทสมบูรณ์แล้ว'}
    else
      render 'new' , flash: {notice: 'เพิ่มไม่สำเร็จโปรดลองอีกครัง'}
    end
  end

  def edit
    @type = Type.find(params[:id])
  end

  def update
    @type = Type.find(params[:id])
    if @type.update(type_params)
      redirect_to types_path , flash: {notice: 'แก้ไขประเภทสมบูรณ์แล้ว'}
    else
      render 'new' , flash: {notice: 'เพิ่มไม่สำเร็จโปรดลองอีกครัง'}
    end
  end

  def show
    @type = Type.find(params[:id])
    @document_type = @type.document
  end

  private
    def type_params
      params.require(:type).permit(:name)
    end

end
