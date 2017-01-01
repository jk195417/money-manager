class CreateMoneyRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :money_records do |t|
      t.string :type
      t.decimal :money
      t.string :label
      t.text :description
      t.timestamps
    end
  end
end
