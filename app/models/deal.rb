class Deal < ApplicationRecord
    belongs_to :retailer
    enum deal_type: %i[fixed percentage]
    validates_presence_of :deal_amount
    validates :deal_amount, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }, if: Proc.new { |a| a.fixed? }
    validates :deal_amount, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0.0, less_than: 1 }, if: Proc.new { |a| a.percentage? }
end
