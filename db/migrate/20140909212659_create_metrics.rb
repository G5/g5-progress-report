class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
