# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Faker::Name.name      #=> "Christophe Bartell"

CategoryGroup.create(title:'The property')
CategoryGroup.create(title:'Auto and transport')
CategoryGroup.create(title:'Appliances')
CategoryGroup.create(title:'Computer technology')
CategoryGroup.create(title:'Phones and tablets')
CategoryGroup.create(title:'Electronics')
CategoryGroup.create(title:"Women's wardrobe")
CategoryGroup.create(title:"Men's wardrobe")
CategoryGroup.create(title:'Beauty and health')
CategoryGroup.create(title:'Furniture')
CategoryGroup.create(title:'Housing')
CategoryGroup.create(title:'Repair and construction')
CategoryGroup.create(title:'Garden and garden equipment')
CategoryGroup.create(title:'Hobbies, sports and tourism')
CategoryGroup.create(title:'Wedding and holidays')
CategoryGroup.create(title:'Animals')
CategoryGroup.create(title:'Ready business and equipment')

Category.create(title:'Apartments', category_group_id: 1)
Category.create(title:'Offices', category_group_id: 1)
Category.create(title:'Warehouses', category_group_id: 1)
Category.create(title:'Trade pavilions', category_group_id: 1)
Category.create(title:'Industrial premises', category_group_id: 1)
Category.create(title:'Garages, parking lots', category_group_id: 1)

Category.create(title:'Cars', category_group_id: 2)
Category.create(title:'Trucks and buses', category_group_id: 2)
Category.create(title:'Mototehnics', category_group_id: 2)
Category.create(title:'Spare parts, consumables', category_group_id: 2)
Category.create(title:'Tires, disks', category_group_id: 2)
Category.create(title:'Accesories', category_group_id: 2)
Category.create(title:'Agricultural machinery', category_group_id: 2)
Category.create(title:'Special equipment', category_group_id: 2)
Category.create(title:'Trailers', category_group_id: 2)
Category.create(title:'Water transport', category_group_id: 2)
Category.create(title:'Tool, equipment', category_group_id: 2)

Category.create(title:'Kitchen appliances', category_group_id: 3)
Category.create(title:'Large kitchen appliances', category_group_id: 3)
Category.create(title:'Cleaning equipment', category_group_id: 3)
Category.create(title:'Garment care, sewing', category_group_id: 3)
Category.create(title:'Air conditioning equipment', category_group_id: 3)
Category.create(title:'Equipment for beauty and health', category_group_id: 3)

Category.create(title:'Laptops', category_group_id: 4)
Category.create(title:'Computers / system units', category_group_id: 4)
Category.create(title:'Monitors', category_group_id: 4)
Category.create(title:'Components', category_group_id: 4)
Category.create(title:'Office equipment', category_group_id: 4)
Category.create(title:'Peripherals and accessories', category_group_id: 4)
Category.create(title:'Network hardware', category_group_id: 4)

Category.create(title:'Mobile phones', category_group_id: 5)
Category.create(title:'Components for phones', category_group_id: 5)
Category.create(title:'Phone accessories', category_group_id: 5)
Category.create(title:'Telephony and communication', category_group_id: 5)
Category.create(title:'Tablets', category_group_id: 5)
Category.create(title:'Graphic tablets', category_group_id: 5)
Category.create(title:'E-books', category_group_id: 5)
Category.create(title:'Smartwatches and fitness bracelets', category_group_id: 5)
Category.create(title:'Accessories for tablets, books, watches', category_group_id: 5)
Category.create(title:'Headphones', category_group_id: 5)

Category.create(title:'Audio engineering', category_group_id: 6)
Category.create(title:'Headphones', category_group_id: 6)
Category.create(title:'TV and video equipment', category_group_id: 6)
Category.create(title:'Photographic equipment and optics', category_group_id: 6)
Category.create(title:'Games and consoles', category_group_id: 6)

Category.create(title:'Premium clothing', category_group_id: 7)
Category.create(title:'Womens clothing', category_group_id: 7)
Category.create(title:'Womens shoes', category_group_id: 7)
Category.create(title:'Womens accessories', category_group_id: 7)
Category.create(title:'Repair and sewing of clothes', category_group_id: 7)
Category.create(title:'Clothes for pregnant women', category_group_id: 7)

Category.create(title:'Mens clothing', category_group_id: 8)
Category.create(title:'Mens footwear', category_group_id: 8)
Category.create(title:'Mens Accessories', category_group_id: 8)

Category.create(title:'Decorative cosmetics', category_group_id: 9)
Category.create(title:'Care cosmetics', category_group_id: 9)
Category.create(title:'Perfumery', category_group_id: 9)
Category.create(title:'Mani Pedi', category_group_id: 9)
Category.create(title:'Hair products', category_group_id: 9)
Category.create(title:'Hygiene products, depilation', category_group_id: 9)
Category.create(title:'Eyelashes and eyebrows, tattoo', category_group_id: 9)
Category.create(title:'Cosmetic accessories', category_group_id: 9)
Category.create(title:'Medical supplies', category_group_id: 9)
Category.create(title:'Equipment for beauty and health', category_group_id: 9)

Category.create(title:'Banquets, ottomans', category_group_id: 10)
Category.create(title:'Hangers, hallways', category_group_id: 10)
Category.create(title:'Chests of drawers', category_group_id: 10)
Category.create(title:'Beds, mattresses', category_group_id: 10)
Category.create(title:'Kitchens', category_group_id: 10)
Category.create(title:'Kitchen corners', category_group_id: 10)
Category.create(title:'Upholstered furniture', category_group_id: 10)
Category.create(title:'Furniture for children', category_group_id: 10)
Category.create(title:'Shelves, racks, lockers', category_group_id: 10)
Category.create(title:'Sleeping sets', category_group_id: 10)
Category.create(title:'Walls, sections, modules', category_group_id: 10)
Category.create(title:'Tables and dining groups', category_group_id: 10)
Category.create(title:'Chairs', category_group_id: 10)
Category.create(title:'Sideboards, sideboards', category_group_id: 10)
Category.create(title:'Cabinets, cupboards', category_group_id: 10)
Category.create(title:'Furniture fittings and components', category_group_id: 10)

Category.create(title:'Interior items, mirrors', category_group_id: 11)
Category.create(title:'Curtains, blinds, curtain rods', category_group_id: 11)
Category.create(title:'Textiles and carpets', category_group_id: 11)
Category.create(title:'Lighting', category_group_id: 11)
Category.create(title:'Household goods', category_group_id: 11)
Category.create(title:'Dishes and kitchen accessories', category_group_id: 11)
Category.create(title:'Houseplants', category_group_id: 11)
Category.create(title:'Domestic services', category_group_id: 11)

Category.create(title:'Construction tool', category_group_id: 12)
Category.create(title:'Construction equipment', category_group_id: 12)
Category.create(title:'Plumbing and heating', category_group_id: 12)
Category.create(title:'Building materials', category_group_id: 12)
Category.create(title:'Decoration Materials', category_group_id: 12)
Category.create(title:'Windows and doors', category_group_id: 12)
Category.create(title:'Houses, log cabins and structures', category_group_id: 12)
Category.create(title:'Gates, fences', category_group_id: 12)
Category.create(title:'Power supply', category_group_id: 12)
Category.create(title:'Personal protective equipment', category_group_id: 12)

Category.create(title:'Garden furniture and swimming pools', category_group_id: 13)
Category.create(title:'Braziers, accessories, fuel', category_group_id: 13)
Category.create(title:'Motoblocks and cultivators', category_group_id: 13)
Category.create(title:'Gardening equipment', category_group_id: 13)
Category.create(title:'Garden tools', category_group_id: 13)
Category.create(title:'Greenhouses and hotbeds', category_group_id: 13)
Category.create(title:'Plants, seedlings and seeds', category_group_id: 13)
Category.create(title:'Fertilizers and agrochemistry', category_group_id: 13)
Category.create(title:'Everything for the beekeeper', category_group_id: 13)
Category.create(title:'Baths, utility blocks, bathrooms', category_group_id: 13)

Category.create(title:'CD, DVD, records', category_group_id: 14)
Category.create(title:'Antiques & Collections', category_group_id: 14)
Category.create(title:'Tickets', category_group_id: 14)
Category.create(title:'Books and magazines', category_group_id: 14)
Category.create(title:'Metal detectors', category_group_id: 14)
Category.create(title:'Musical instruments', category_group_id: 14)
Category.create(title:'Board games and puzzles', category_group_id: 14)
Category.create(title:'Hunting and fishing', category_group_id: 14)
Category.create(title:'Travel goods', category_group_id: 14)
Category.create(title:'Radio controlled models', category_group_id: 14)
Category.create(title:'Needlework', category_group_id: 14)
Category.create(title:'Sports goods', category_group_id: 14)
Category.create(title:'Bicycles', category_group_id: 14)
Category.create(title:'Electric transport', category_group_id: 14)

Category.create(title:'Wedding Dresses', category_group_id: 15)
Category.create(title:'Wedding suits', category_group_id: 15)
Category.create(title:'Wedding shoes', category_group_id: 15)
Category.create(title:'Wedding accessories', category_group_id: 15)
Category.create(title:'Gifts and Party Supplies', category_group_id: 15)
Category.create(title:'Carnival costumes', category_group_id: 15)

Category.create(title:'Pets', category_group_id: 16)
Category.create(title:'Farm animals', category_group_id: 16)
Category.create(title:'Goods for pets', category_group_id: 16)

Category.create(title:'Ready business', category_group_id: 17)
Category.create(title:'Business equipment', category_group_id: 17)

 100.times do
  l = Lot.create!(
     name: Faker::Commerce.product_name,
     description: Faker::Lorem.paragraph(sentence_count: 10),
     start_price: Faker::Commerce.price(range: 1..100),
     fast_buy_price: Faker::Commerce.price(range: 150..10000),
     end_date: Faker::Date.forward(days: 30),
     user_id: rand(1..2),
     category_id: rand(1..148),
   )
   l.images.attach(io: File.open("#{Rails.root}/app/assets/images/lot.png"), filename: "lot.png")
 end