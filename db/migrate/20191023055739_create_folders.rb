class CreateFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :folders do |t|
      t.integer :number
      t.string :name
      t.text :description

      t.timestamps 
    end
  end
end
