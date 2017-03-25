require 'httparty'

    response = HTTParty.get('https:/5b0a2afb84f8ff8b14088c9b5542efc0:00b35a5599c613a0517040145b26af49@siwy-denim.myshopify.com/admin/orders.json')
    
    puts response.body, response.code
    
    p "hello"

class Shop
    include HTTParty
    base_uri 'https:/5b0a2afb84f8ff8b14088c9b5542efc0:00b35a5599c613a0517040145b26af49@siwy-denim.myshopify.com/admin/orders.json'
    
    def initialize(service, page)
       @options = { query: {service: service, page: page} } 
    end
    
    p 'hello'
    
    
    
    # default_params fields: 'id'
    # format :json
    
    # def self.for term
    #     get("", query: { query: term})["financial_status"]
    # end
    
    
    # attr_accessor :id, :financial_status, :total_price, :created_at, :line_item
    
    # def initialize(response)
    #     @id = response['id']
    #     @financial_status = response['financial_status']
    #     @total_price = response['total_price']
    #     @created_at = response['created_at']
    #     @line_item = response['line_item']['name']
    # end
    
    # def self.get_orders(response)
    #     response = HTTParty.get('https:/5b0a2afb84f8ff8b14088c9b5542efc0:00b35a5599c613a0517040145b26af49@siwy-denim.myshopify.com/admin/orders.json', format: :json)
    #     response[0]
    #     # body = JSON.parse(response.body)
    #     # if response.success?
    #     #     new(response)
    #     # else
    #     #     raise response.response
    #     # end
    # end
    


end

        