
category = 
    ["shirts","pants","shoes","shorts"]

category.each do |name|
    Category.create!(
        name: name   
        )
    end
puts " Categories created"

2.times do |category_types|
     c = Category.select(:id).where(name: "shirts").take
    CategoryType.create!(
        name: "short sleeve shirt",
        category_id: c.id
        )
    end
puts "3  Category type created for shirts"

3.times do |category_types|
    c = Category.select(:id).where(name: "pants").take
    CategoryType.create!(
        name: "blue jeans",
        category_id: c.id
        )
    end
puts "3  Category type created for pants"

3.times do |category_types|
    c = Category.select(:id).where(name: "shoes").take
    CategoryType.create!(
        name: "gym shoes",
        category_id: c.id
        )
    end
puts "3  Category type created for shoes"

3.times do |category_types|
    c = Category.select(:id).where(name: "shorts").take
    CategoryType.create!(
        name: "denim",
        category_id: c.id
        )
    end
puts "3  Category type created for shorts"

sizes = ['small', 'medium', 'large']

sizes.each do |size|
    c = Category.select(:id).where(name: "pants").take
    Size.create!(
        name: size,
        category_id: c.id
    
        )
    end
puts "3 sizes created small, medium, large for pants"

shoe_size = 9
while shoe_size != 14
    c =  Category.select(:id).where(name: "shoes").take
    Size.create!(
        name: shoe_size,
        category_id: c.id
    
        )
        shoe_size = shoe_size + 1
end
puts "5 size created 9 -13"


sizes.each do |size|
    c = Category.select(:id).where(name: "shorts").take
    Size.create!(
        name: size,
        category_id: c.id
    
        )
end
puts "3 sizes created small, medium, large for shorts"

sizes.each do |size|
    c = Category.select(:id).where(name: "shirts").take
    Size.create!(
        name: size,
        category_id: c.id
    
        )
end
puts "3 sizes created small, medium, large for shirts"


2.times do
     c = Category.select(:id).where(name: "shorts").take
     s = Size.select(:id).where(category_id: c.id, name: 'small').take
     t = CategoryType.select(:id).where(category_id: c.id).where(name: "denim").take

    Product.create!(
        name: "shorts",
        size_id: s.id,
        category_id: c.id,
        category_type_id: t.id,
        quantity: 2,
        price: 5,
        
        )
end
puts "2 Products created"

2.times do
    c = Category.select(:id).where(name: "pants").take
    s = Size.select(:id).where(category_id: c.id, name: 'medium').take
    t = CategoryType.select(:id).where(category_id: c.id).where(name: "blue jeans").take

   Product.create!(
       name: "pants",
       size_id: s.id,
       category_id: c.id,
       category_type_id: t.id,
       quantity: 2,
       price: 5.00,
       
       )
end
puts "2 Products created"

2.times do 
    c = Category.select(:id).where(name: "shirts").take
    s = Size.select(:id).where(category_id: c.id, name: 'large').take
    t = CategoryType.select(:id).where(category_id: c.id).where(name: "short sleeve shirt").take

   Product.create!(
       name: "shirt",
       size_id: s.id,
       category_id: c.id,
       category_type_id: t.id,
       quantity: 2,
       price: 5.00,
       
       )
end
puts "2 Products created"

2.times do
    c = Category.select(:id).where(name: "shoes").take
    s = Size.select(:id).where(category_id: c.id, name: "13").take
    t = CategoryType.select(:id).where(category_id: c.id).where(name: "gym shoes").take

   Product.create!(
       name: "shoes",
       size_id: s.id,
       category_id: c.id,
       category_type_id: t.id,
       quantity: 2,
       price: 5.00,
       
       )
end
puts "2 Products created"



num = 1
8.times do 
    Image.create!(
        name: "short",
        product_id: num,
        url: "https://place-hold.it/270x345"   
        )
        num= num + 1
end
puts "8 images created"


