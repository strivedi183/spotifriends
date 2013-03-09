class CreateSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string  :title
      t.string  :artist
      t.string  :spy_url
      t.text  :description
      t.integer :contest_id
      t.timestamps
    end
  end
end
