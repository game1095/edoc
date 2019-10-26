class ChangeNumberOnDocumentToString < ActiveRecord::Migration[5.2]
  def change
    change_column :documents , :number , :string
  end
end
