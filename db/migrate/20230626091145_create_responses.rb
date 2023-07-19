class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.string :name
      t.text :context
      t.datetime :time
      t.string :img_path
      t.references :thre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
