class CreateContestsTable < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string  :name
      t.date  :start_date
      t.date  :end_date

      t.integer :group_id
      t.integer :admin
      t.timestamps
    end
  end
end
