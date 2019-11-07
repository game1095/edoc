class CreateSents < ActiveRecord::Migration[5.2]
  def change
    create_table :sents do |t|
      
      t.timestamps
    end
  end
end
