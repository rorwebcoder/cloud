# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Vendor.destroy_all

data = [{vendor_name: "ALPHA", vendor_description: "Alpha Plastics"},{vendor_name: "BETA", vendor_description: "Beta Plastics"}, {vendor_name: "GAMMA", vendor_description: "Gamma Plastics"} ]

data.each do |vendor_info|
  v = Vendor.new
  v.vendor_name = vendor_info[:vendor_name]
  v.vendor_description = vendor_info[:vendor_description]
  v.save
end

puts "There are now #{Vendor.count} vendors in the database"


Shipper.destroy_all

data = [{shipper_name: "AVON", shipper_description: "Avon Prodcuts"},{shipper_name: "P&G", shipper_description: "Procter and Gamble"}, {shipper_name: "PEPSI", shipper_description: "Pepsi Co"} ]

data.each do |shipper_info|
  s = Shipper.new
  s.shipper_name = shipper_info[:shipper_name]
  s.shipper_description = shipper_info[:shipper_description]
  s.save
end

puts "There are now #{Shipper.count} shippers in the database"
