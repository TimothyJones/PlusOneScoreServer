class CreateScoreSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :score_summaries do |t|
      t.integer :score
      t.integer :reachedby

      t.timestamps
    end
  end
end
