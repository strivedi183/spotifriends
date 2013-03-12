class CreateRequestsTable < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string  :email
      t.timestamps
    end
  end
end
