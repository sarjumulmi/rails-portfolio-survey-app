class CreateAnswerChoices < ActiveRecord::Migration
  def change
    create_table :answer_choices do |t|
      t.string :answer_text
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
