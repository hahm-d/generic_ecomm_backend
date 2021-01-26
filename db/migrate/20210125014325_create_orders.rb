class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :tracking
      t.integer :user_id
      t.float :total
      t.string :status
      t.timestamps
    end
  end
end
