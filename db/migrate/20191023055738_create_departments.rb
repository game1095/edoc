class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.references :sent , foreign_key: true , on_delete: :no_action
      t.timestamps
    end
  end
end
