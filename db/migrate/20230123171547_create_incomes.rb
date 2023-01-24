class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.string :name
      t.integer :value
      t.datetime :date

      t.timestamps
    end
  end
end
