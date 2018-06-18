class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.string :user
      t.integer :highscore

      t.timestamps
    end
  end
end
