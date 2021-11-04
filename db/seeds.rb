# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
retailer1 = Retailer.create(name: "Walmart", domains:["walmart.com", "walmart.ca"])
deal1 = Deal.create(deal_type: 'percentage', deal_amount:0.2, retailer_id: retailer1.id)
retailer2 = Retailer.create(name: "Canadian Tire", domains:["canadiantire.ca"])
deal2 = Deal.create(deal_type:"percentage", deal_amount:0.29, retailer_id: retailer2.id)
retailer3 = Retailer.create(name: "Lululemon", domains:["shop.lululemon.com"])
deal3 = Deal.create(deal_type:"percentage", deal_amount:0.5, retailer_id: retailer3.id)
retailer4 = Retailer.create(name: "Bestbuy", domains:["bestbuy.com", "bestbuy.ca"])
deal4 = Deal.create(deal_type:"percentage", deal_amount:0.0149, retailer_id: retailer4.id)
retailer5 = Retailer.create(name: "Costco", domains:["costco.com", "costco.ca"])
deal5 = Deal.create(deal_type:"percentage", deal_amount:0, retailer_id: retailer5.id)
retailer6 = Retailer.create(name: "Hudson's Bay", domains:["thebay.com"])
deal6 = Deal.create(deal_type:"percentage", deal_amount:0.3, retailer_id: retailer6.id)