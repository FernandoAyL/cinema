class CreateDiscounts < ActiveRecord::Migration[5.1]
  def change
    create_table :discounts do |t|
      t.references :user, foreign_key: true
      t.integer :percentage
      t.boolean :used

      t.timestamps
    end
  end
end
