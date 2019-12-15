class SearchsController < ApplicationController
  def index
    @documents = Document.where(["title LIKE ?", "%#{params[:search]}%"])
  end
  
  def search_params
    params.require(:search).permit(:title)
  end
end
