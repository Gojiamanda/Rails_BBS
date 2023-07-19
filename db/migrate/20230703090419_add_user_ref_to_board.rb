class AddUserRefToBoard < ActiveRecord::Migration[7.0]
  def change
    t.references :board, null: false, foreign_key: true
  end
end
