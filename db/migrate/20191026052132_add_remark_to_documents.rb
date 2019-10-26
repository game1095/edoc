class AddRemarkToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents , :remark , :string
  end
end
