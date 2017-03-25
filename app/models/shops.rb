class Shop
    include HTTParty


    base_uri 'https://5b0a2afb84f8ff8b14088c9b5542efc0:00b35a5599c613a0517040145b26af49@siwy-denim.myshopify.com/admin/orders.json'
    # default_params fields: 'id, financial_status,status', q: "search"
    # format :json

    def self.for(server)
      HTTParty.get('siwy-denim.myshopify.com/admin/orders.json')
    end


require 'rubygems'
require 'httparty'



puts 'boobies'
puts response.code
end
