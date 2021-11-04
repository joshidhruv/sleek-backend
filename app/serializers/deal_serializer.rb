class DealSerializer < ActiveModel::Serializer
  attributes :id, :deal_type, :deal_amount, :created_at, :updated_at, :retailer

  def retailer
    object.retailer
  end
end
