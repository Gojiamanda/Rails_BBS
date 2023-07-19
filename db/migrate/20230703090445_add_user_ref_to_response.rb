class AddUserRefToResponse < ActiveRecord::Migration[7.0]
  def change
    t.references :response, null: false, foreign_key: true
  end
end
