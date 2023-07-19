class AddUserRefToThre < ActiveRecord::Migration[7.0]
  def change
    t.references :thre, null: false, foreign_key: true
  end
end
