class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :position
      t.references :player, null: false, foreign_key: true
      t.references :wod, null: false, foreign_key: true

      t.timestamps
    end
  end
end
