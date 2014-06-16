class CreateBestAnswers < ActiveRecord::Migration
  def change
    create_table :best_answers do |t|
      t.integer :question_id, null: false
      t.integer :answer_id, null: false
    end
  end
end
