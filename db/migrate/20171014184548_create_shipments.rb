class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.references :sender, foreign_key: true
      t.references :receiver, foreign_key: true
      t.references :cadet, foreign_key: true
      t.string :sender_address
      t.string :receiver_address
      t.decimal :distance
      t.decimal :price
      t.datetime :requested_date
      t.datetime :received_date
      t.integer :payment_method
      t.integer :comission_payed_by

      t.timestamps
    end
  end
end
