class AddStatusDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :documents , :status_id , 1
  end
end
