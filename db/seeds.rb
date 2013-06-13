# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Vendor.destroy_all

data = [{id: 1, vendor_name: "ALPHA", vendor_description: "Alpha Plastics"},{id: 2, vendor_name: "BETA", vendor_description: "Beta Plastics"}, {id: 3, vendor_name: "GAMMA", vendor_description: "Gamma Plastics"} ]

data.each do |vendor_info|
  v = Vendor.new
  v.id = vendor_info[:id]
  v.vendor_name = vendor_info[:vendor_name]
  v.vendor_description = vendor_info[:vendor_description]
  v.save
end

puts "There are now #{Vendor.count} vendors in the database"


Shipper.destroy_all

data = [{id: 1, shipper_name: "AVON", shipper_description: "Avon Prodcuts"},{id: 2, shipper_name: "P&G", shipper_description: "Procter and Gamble"}, {id: 3, shipper_name: "PEPSI", shipper_description: "Pepsi Co"} ]

data.each do |shipper_info|
  s = Shipper.new
  s.id = shipper_info[:id]
  s.shipper_name = shipper_info[:shipper_name]
  s.shipper_description = shipper_info[:shipper_description]
  s.save
end

puts "There are now #{Shipper.count} shippers in the database"

Carrier.destroy_all

data = [{id: 1, carrier_name: "HJBT", carrier_description: "J B Hunt Corp"},{id: 2, carrier_name: "SCHN", carrier_description: "Schneider National"}, {id: 3, carrier_name: "GORD", carrier_description: "Gordon Trucking"} ]

data.each do |carrier_info|
  c = Carrier.new
  c.id = carrier_info[:id]
  c.carrier_name = carrier_info[:carrier_name]
  c.carrier_description = carrier_info[:carrier_description]
  c.save
end

puts "There are now #{Carrier.count} carriers in the database"


Load.destroy_all

data = [{id: 1, bill_of_lading: "BOL1290", carrier_id: 1, vendor_id: 1, shipper_id: 1, equipment_type: "53FT", inco_terms: "FOB", freight_terms: "PREPID", mode: "TL" },
        {id: 2, bill_of_lading: "BOL2360", carrier_id: 2, vendor_id: 2, shipper_id: 2, equipment_type: "40FT", inco_terms: "DDS", freight_terms: "COLLECT", mode: "LTL" },
        {id: 3, bill_of_lading: "BOL3370", carrier_id: 3, vendor_id: 3, shipper_id: 3, equipment_type: "20FT", inco_terms: "FOB", freight_terms: "PREPID", mode: "INTERMODAL" },
        {id: 4, bill_of_lading: "BOL4550", carrier_id: 1, vendor_id: 1, shipper_id: 1, equipment_type: "53FT", inco_terms: "DDS", freight_terms: "COLLECT", mode: "TL" }]
data.each do |load_info|
  l = Load.new
  l.id = load_info[:id]
  l.bill_of_lading = load_info[:bill_of_lading]
  l.carrier_id = load_info[:carrier_id]
  l.vendor_id = load_info[:vendor_id]
  l.shipper_id = load_info[:shipper_id]
  l.equipment_type = load_info[:equipment_type]
  l.inco_terms = load_info[:inco_terms]
  l.freight_terms = load_info[:freight_terms]
  l.mode = load_info[:mode]
  l.save
end

puts "There are now #{Load.count} loads in the database"


Stop.destroy_all

data = [{id: 1, load_id: 1, stop_type: "PICKUP", stop_sequence: 1, stop_name: "ATLANTA DC", stop_address: "700 SUWANEE RD", stop_city: "SUWANEE", stop_state: "GA", stop_country: "USA", stop_postal: 75234 },
        {id: 2, load_id: 1, stop_type: "PICKUP", stop_sequence: 2, stop_name: "RESTON DC", stop_address: "900 RONDEE RD", stop_city: "RESTON", stop_state: "VA", stop_country: "USA", stop_postal: 78903 },
        {id: 3, load_id: 1, stop_type: "DROPOFF", stop_sequence: 3, stop_name: "MARYLAND DC", stop_address: "6033 SHERIDAN RD", stop_city: "MARYLAND", stop_state: "MD", stop_country: "USA", stop_postal: 67339 },
        {id: 4, load_id: 2, stop_type: "PICKUP", stop_sequence: 1, stop_name: "DALLAS DC", stop_address: "1200 EVANSTON RD", stop_city: "DALLAS", stop_state: "TX", stop_country: "USA", stop_postal: 12889 },
        {id: 5, load_id: 2, stop_type: "DROPOFF", stop_sequence: 2, stop_name: "AUSTIN DC", stop_address: "8923 BONFIRE RD", stop_city: "AUSTIN", stop_state: "TX", stop_country: "USA", stop_postal: 89349 },
        {id: 6, load_id: 2, stop_type: "DROPOFF", stop_sequence: 3, stop_name: "NEWMEXICO DC", stop_address: "2389 DUBANKEE RD", stop_city: "NEWMEXICO", stop_state: "NM", stop_country: "USA", stop_postal: 75234 },
        {id: 7, load_id: 3, stop_type: "PICKUP", stop_sequence: 1, stop_name: "CHICAGO DC", stop_address: "239 CHICO RD", stop_city: "CHICAGO", stop_state: "IL", stop_country: "USA", stop_postal: 78304 },
        {id: 8, load_id: 3, stop_type: "PICKUP", stop_sequence: 2, stop_name: "SPRINGFIELD DC", stop_address: "248 KODAI RD", stop_city: "SPRINGFIELD", stop_state: "IL", stop_country: "USA", stop_postal: 75236 },
        {id: 9, load_id: 3, stop_type: "DROPOFF", stop_sequence: 3, stop_name: "STLOUIS DC", stop_address: "7348 NEW EVANSTON RD", stop_city: "STLOUIS", stop_state: "MO", stop_country: "USA", stop_postal: 12894 },
        {id: 10, load_id: 4, stop_type: "PICKUP", stop_sequence: 1, stop_name: "MONTREAL DC", stop_address: "789 EVNASTON RD", stop_city: "MONTREAL", stop_state: "QC", stop_country: "USA", stop_postal: 89342 },
        {id: 11, load_id: 4, stop_type: "DROPOFF", stop_sequence: 2, stop_name: "ALBERTA DC", stop_address: "79034 FORTRESS RD", stop_city: "ALBERTA", stop_state: "AB", stop_country: "USA", stop_postal: 23894 }]


data.each do |stop_info|
  s = Stop.new
  s.id = stop_info[:id]
  s.load_id = stop_info[:load_id]
  s.stop_type = stop_info[:stop_type]
  s.stop_sequence = stop_info[:stop_sequence]
  s.stop_name = stop_info[:stop_name]
  s.stop_address = stop_info[:stop_address]
  s.stop_city = stop_info[:stop_city]
  s.stop_state = stop_info[:stop_state]
  s.stop_country = stop_info[:stop_country]
  s.stop_postal = stop_info[:stop_postal]
  s.save
end

puts "There are now #{Stop.count} stops in the database"
