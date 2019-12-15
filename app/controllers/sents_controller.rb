class SentsController < ApplicationController
  authorize_resource class: SentsController
  def index
    @document = Document.where(status_id: 2)
  end

  def edit
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>2 new"
    @sent = Document.find([1])
  end

  def update
    @sent = Document.find([1])
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>> 2 update"
    @sent = Document.first.update(department_ids:[1,2])
  end
end
