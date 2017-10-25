class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.references :emitted_by, foreign_key: true
      t.string :code
      t.boolean :used

      t.timestamps
    end
  end
end
