class CreateJointableTypeDocument < ActiveRecord::Migration[5.2]
  def change
    create_join_table :types , :documents do |t|
      t.index [:type_id , :document_id]
      t.index [:document_id , :type_id]
    end
  end
end
