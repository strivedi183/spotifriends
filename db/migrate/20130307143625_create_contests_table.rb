class CreateContestsTable < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string  :name
      t.text  :description
      t.date  :start_date
      t.time  :start_time, :default => '12:00'
      t.date  :end_date
      t.time  :end_time, :default => '20:00'
      t.integer :group_id
      t.integer :admin_id
      t.timestamps
    end
  end
end
