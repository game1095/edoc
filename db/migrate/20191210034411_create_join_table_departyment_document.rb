class CreateJoinTableDepartymentDocument < ActiveRecord::Migration[5.2]
  def change
    # create_join_table :departments , :documents do |t|
    #   t.index [:department_id , :document_id]
    #   t.index [:document_id , :department_id]
    # end

    create_table :departments_documents, id: false do |t|
      t.belongs_to :document
      t.belongs_to :department
      t.datetime :duedate
    end
  end
end
