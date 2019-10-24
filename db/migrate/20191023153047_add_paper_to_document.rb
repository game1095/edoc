class AddPaperToDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents , :paper , :string
  end
end
