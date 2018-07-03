
namespace :import_json_data do
  desc "Importing data from json"
  task :categories => :environment do

    categories_list = JSON.parse(File.read('data/categories.json'))

    categories_list.each do |category|
      Category.create(name: category.to_s)
    end
  end
  task :products => :environment do

    categories = Category.all
    categories_to_id = categories.map{ |p| [p.name,p.id] }.to_h
    products_list = JSON.parse(File.read('data/products.json'))

    products_list.each do |product|
      Product.create(name: product['name'].to_s,
                     image: product['image'].to_s,
                     score: product['score'].to_s,
                     price: product['price'].to_s,
                     url: product['url'].to_s,
                     category_id: categories_to_id[product['category'].to_s])
    end
  end
end
