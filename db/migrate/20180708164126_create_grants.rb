class CreateGrants < ActiveRecord::Migration[5.2]
  def change
    create_table :grants do |t|
      t.date :deadline
      t.date :internal_deadline
      t.integer :state
      t.string :funder
      t.string :program
      t.string :priority_level
      t.decimal :range_min
      t.decimal :range_max
      t.decimal :funded_amount
      t.boolean :previosly_awarded

      t.timestamps
    end
  end
end
