class CreateExpenses < ActiveRecord::Migration[8.0]
  def change
    create_table :expenses do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :amount
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
