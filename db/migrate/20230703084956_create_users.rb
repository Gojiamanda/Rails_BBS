class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :loginname
      t.string :name
      t.string :role
      t.string :password_digest
      t.string :threLog
      t.string :resLog

      t.timestamps
    end
  end
end
