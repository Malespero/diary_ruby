class AddDiaryIdToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :diary_id, :integer
  end
end
