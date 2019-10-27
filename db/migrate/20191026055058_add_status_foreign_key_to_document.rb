class AddStatusForeignKeyToDocument < ActiveRecord::Migration[5.2]
  def change
    add_reference :documents , :status , index:true
  end
end
