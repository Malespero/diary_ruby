class AddKindToDiary < ActiveRecord::Migration[6.1]
  def change
    add_column :diaries, :kind, :integer
  end
end
