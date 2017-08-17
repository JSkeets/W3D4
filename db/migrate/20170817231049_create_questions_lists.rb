class CreateQuestionsLists < ActiveRecord::Migration[5.1]
  def change
    create_table :questions_lists do |t|
      t.integer :poll_id, null: false 
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end
