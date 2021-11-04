class AddRetailReferenceToDeals < ActiveRecord::Migration[6.0]
  def change
    add_reference :deals, :retailer, index:true, type: :uuid, foreign_key: true
  end
end
