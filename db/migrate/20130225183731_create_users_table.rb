class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text  :first_name
      t.text  :last_name
      t.text  :email
      t.string  :image
      t.string  :password_digest
      t.boolean :is_admin
      t.timestamps
    end
  end

end
