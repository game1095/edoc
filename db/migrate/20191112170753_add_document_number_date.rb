class AddDocumentNumberDate < ActiveRecord::Migration[5.2]
  def change
    add_column :documents , :document_number , :string
    add_column :documents , :date , :date
  end
end
