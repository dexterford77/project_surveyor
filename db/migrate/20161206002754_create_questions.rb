class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :prompt
      t.boolean :required
      t.string :type
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
