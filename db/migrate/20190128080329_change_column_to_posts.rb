class ChangeColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :studied_at, :date
    change_column :posts, :study_time, :time
  end
end