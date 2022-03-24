# Product.create!([
#   {name: "Ninkasi", price: "8.0", img_url: "http://brewpublic.com/wp-content/uploads/2014/12/Ninkasi_Colorado.jpg", description: "great hoppy dark ipa", inventory: nil},
#   {name: "Guinness", price: "4.0", img_url: "http://barmagazine.co.uk/wp-content/uploads/2015/01/New-Guinness-Glass.jpg", description: "Belgian Strong Ale", inventory: nil},
#   {name: "Stella Artois", price: "4.0", img_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.uneedabottle.ca%2Fwp-content%2Fuploads%2F2015%2F10%2FBottle_Stella_03.jpg8ebfa120-dcf8-46a8-aece-585f6791bb8bOriginal.jpg&f=1&nofb=1", description: "Belgian And French Ale", inventory: nil},
#   {name: "Lowenbrau", price: "8.0", img_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Feluenheng.luenheng.com%2Fwp-content%2Fuploads%2F2021%2F02%2FLowenbrau.png&f=1&nofb=1", description: "Light Hybrid Beer", inventory: nil},
#   {name: "Blue Moon", price: "6.0", img_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmir-s3-cdn-cf.behance.net%2Fproject_modules%2Fmax_1200%2F6fc1b143387853.57ed1c274aba9.jpg&f=1&nofb=1", description: "Stout", inventory: nil},
#   {name: "Tsingtao", price: "12.0", img_url: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.tsingtaobeer.co.za%2Fwp-content%2Fuploads%2F2017%2F10%2Fbottles.png&f=1&nofb=1", description: "Light Lager", inventory: nil},
#   {name: "Carlsberg", price: "12.0", img_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fammangmart.com%2Fwp-content%2Fuploads%2F2020%2F05%2Fcarlsberg-650.jpg&f=1&nofb=1", description: "Strong Ale", inventory: nil},
#   {name: "Heineken", price: "11.0", img_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.bandt.com.au%2Finformation%2Fuploads%2F2017%2F01%2FBottle_H3_2.jpg&f=1&nofb=1", description: "Belgian And French Ale", inventory: nil},
#   {name: "Paulaner", price: "5.0", img_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.amstein.ch%2FHtdocs%2FImages%2FPictures%2F54787.jpg&f=1&nofb=1", description: "Stout", inventory: nil},
#   {name: "Rainier", price: "4.0", img_url: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwoodyboater.wpengine.netdna-cdn.com%2Fwp-content%2Fuploads%2F2015%2F05%2Frainierwallpaper.jpg&f=1&nofb=1", description: "nice cheap great lager", inventory: nil}
# ])


# products = Product.where(supplier_id: nil)
# products.each do |product|
#   product.supplier_id = rand(1..3)
#   product.save
# end 

products = Product.where(inventory: nil)
products.each do |product|
  product.inventory = rand(10..120)
  product.save 
end 

