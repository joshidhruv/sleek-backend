class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals, id: :uuid do |t|
      t.integer :deal_type
      t.float :deal_amount

      t.timestamps
    end
  end
end
