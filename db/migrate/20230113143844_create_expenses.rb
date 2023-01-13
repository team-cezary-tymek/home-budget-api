class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.belongs_to :category, null: false, foreign_key: true
      t.integer :value
      t.datetime :date

      t.timestamps
    end
  end
end
