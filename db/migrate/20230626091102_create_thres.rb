class CreateThres < ActiveRecord::Migration[7.0]
  def change
    create_table :thres do |t|
      t.string :title
      t.string :name
      t.text :context
      t.datetime :time
      t.string :img_path
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
