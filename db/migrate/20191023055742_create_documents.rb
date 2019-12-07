class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.integer :number
      t.date :dated
      t.string :title
      t.text :detail
      t.text :remark

      # t.references :department , foreign_key: true , on_delete: :no_action
      t.references :sent , foreign_key: true , on_delete: :no_action
      t.references :folder , foreign_key: true
      t.references :confidential , foreign_key: true
      t.references :user , foreign_key: true

      t.timestamps
    end
  end
end
