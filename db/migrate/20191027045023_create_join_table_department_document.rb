class CreateJoinTableDepartmentDocument < ActiveRecord::Migration[5.2]
  def change
    create_join_table :departments , :documents do |t|
      t.index [:department_id , :document_id]
      t.index [:document_id , :department_id]
    end
  end
end
