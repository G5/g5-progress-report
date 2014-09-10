class CreateMonthlies < ActiveRecord::Migration
  def change
    create_table :monthlies do |t|
      t.integer :year
      t.integer :month
      t.string :kind
      t.integer :quantity

      t.timestamps
    end
  end
end
