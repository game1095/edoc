class AddDueDatetoDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents , :duedate , :datetime
  end
end
