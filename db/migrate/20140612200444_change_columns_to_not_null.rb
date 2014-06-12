class ChangeColumnsToNotNull < ActiveRecord::Migration
  def up
    change_column :questions, :title, :string, null: false
    change_column :questions, :description, :text, null: false
    change_column :answers, :description, :text, null: false
  end

  def down
    change_column :questions, :title, :string
    change_column :questions, :description, :text
    change_column :answers, :description, :text
  end
end
