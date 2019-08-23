class AddTimeAndPointsToScore < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :time, :time
    add_column :scores, :points, :integer
  end
end
