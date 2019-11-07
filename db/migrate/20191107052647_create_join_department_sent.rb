class CreateJoinDepartmentSent < ActiveRecord::Migration[5.2]
  def change
    create_join_table :departments , :sents do |t|
      t.index [:department_id , :sent_id]
      t.index [:sent_id , :department_id]
    end
  end
end
