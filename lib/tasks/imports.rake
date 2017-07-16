namespace :imports do
  desc "TODO"
  task import: :environment do

    #download products to url
     %w{pantalones  pantalon  camiseta  bolso  bragas  sujetador  vaqueros  chaqueta  blusa  pantalones cortos pantalones palazzo pantalones rotos pantalones zara pantalones chinos pantalones cortos mujer pantalones cortos hombre pantalones anchos pantalones vaqueros pantalones stradivarius pantalones adidas pantalones amarillos pantalones adidas mujer pantalones acampanados pantalones altos pantalones adidas hombre pantalones anchos de fiesta pantalones anchos tallas grandes pantalones anchos hombre pantalones a la cintura pantalones a la moda pantalones a la cadera pantalones a la moda pantalones a cuadros pantalones a medida pantalones a crochet pantalones a cuadros para mujer pantalones a media pompa pantalones a la moda pantalones blancos pantalones bombachos pantalones boyfriend pantalones blancos rotos pantalones blancos mujer pantalones blancos hombre pantalones baggy pantalones beige pantalones boda pantalones boyfriend mujer pantalones b violet h&m pantalones pantalones obey pantalones b pantalones b young bkul pantalones p&b pantalones pantalones chinos mujer pantalones cagados pantalones campana pantalones cortos adidas pantalones capri pantalones cortos mujer zara pantalones c&a pantalones c&a hombre pantalones c&a precio pantalones c toy pantalones cest toi pantalones c&a hombre precios pantalones de trabajo pantalones de vestir mujer pantalones de campana pantalones de pinza pantalones de fiesta pantalones de moda pantalones de lino pantalones de montaña pantalones dockers pantalones de chandal pantalones de dama pantalones de vestir para mujer pantalones de colores pantalones d mujer pantalones de moda pantalones de mezclilla pantalones d moda pantalones de verano pantalones estampados pantalones el corte ingles pantalones en ingles pantalones embarazada pantalones estampados zara pantalones elefante pantalones escalada pantalones etnicos pantalones el ganso pantalones easy wear pantalones de mujer pantalones de hombre pantalones de damas pantalones e-land pantalones fluidos pantalones fiesta pantalones flores}.each do |keywoard|

       require 'net/http'

        url = "https://api.zanox.com/json/2011-03-01/products?connectid=43EEF0445509C7205827&q=#{keywoard}&partnership=all&region=ES&page=0"
        resp = Net::HTTP.get_response(URI.parse(url))
        data = resp.body
        result = JSON.parse(data)
        page = result["total"] / 50
        puts page
        (0..page).each do |page|
        url = "https://api.zanox.com/json/2011-03-01/products?connectid=43EEF0445509C7205827&q=#{result["query"]}&partnership=all&region=ES&page=#{page}"
        resp = Net::HTTP.get_response(URI.parse(url))
        data = resp.body
          data = JSON.parse(data)
            item = data["productItems"]["productItem"].map do |item|
              p = Product.new(:external_id => "#{item["@id"]}", :name => "#{item["name"]}", :resume => "#{item["program"]["description"]}", :description => "#{item["program"]["descriptionLong"]}",  :price => "#{item["program"]["price"]}")
              p.save
              puts "#{item["@id"]} save"
          end
        end
      end
    end
end
