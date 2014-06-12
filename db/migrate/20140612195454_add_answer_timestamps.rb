class AddAnswerTimestamps < ActiveRecord::Migration
  def up
      add_column(:answers, :created_at, :datetime)
      add_column(:answers, :updated_at, :datetime)
  end

  def down
      remove_column(:answers, :created_at, :datetime)
      remove_column(:answers, :updated_at, :datetime)
  end
end
