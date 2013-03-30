class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :user
      t.decimal :weight
      t.text :memo

      t.timestamps
    end
    add_index :records, :user_id
  end
end
