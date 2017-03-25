class FiomallController < ApplicationController
  require 'open-uri'
  require 'json'
  require 'httparty'
  protect_from_forgery
    before_action :authenticate_user!
    def shop
       @fio = ['fiomall20','kissfiomall','lovefiomall']
        count = open('https://siwy-denim.myshopify.com/admin/orders/count.json', http_basic_authentication: ['5b0a2afb84f8ff8b14088c9b5542efc0', '00b35a5599c613a0517040145b26af49']).read
        count = JSON.parse(count)["count"]
        @page2 = 
        p count
        current_page = 1
        # orderNum = ''
        pages = (count.to_i / 250.0)
        while(current_page <= 1)      
        current_page = 1
        @newurl = URI.parse('https://siwy-denim.myshopify.com/admin/orders.json?limit=250&page=' + current_page.to_s)
       @orderNum = open(@newurl, http_basic_authentication: ['5b0a2afb84f8ff8b14088c9b5542efc0', '00b35a5599c613a0517040145b26af49']).read
        @orders = JSON.parse(@orderNum)["orders"]
        current_page += 1


    
    
        # @orders = JSON.parse(orderNum)["orders"]
        end

        render "fiomall"
    end
    
  def newpage
       @fio = ['fiomall20','kissfiomall','lovefiomall']

   @current_page = 2
    @newurl = URI.parse('https://siwy-denim.myshopify.com/admin/orders.json?limit=250&page=' + @current_page.to_s)
     @orderNum = open(@newurl, http_basic_authentication: ['5b0a2afb84f8ff8b14088c9b5542efc0', '00b35a5599c613a0517040145b26af49']).read
     @orders = JSON.parse(@orderNum)["orders"]
     render "fiomall"
  end
  
  def thirdpage
       @fio = ['fiomall20','kissfiomall','lovefiomall']

    @current_page = 3
    @newurl = URI.parse('https://siwy-denim.myshopify.com/admin/orders.json?limit=250&page=' + @current_page.to_s)
     @orderNum = open(@newurl, http_basic_authentication: ['5b0a2afb84f8ff8b14088c9b5542efc0', '00b35a5599c613a0517040145b26af49']).read
     @orders = JSON.parse(@orderNum)["orders"]
     render "fiomall"
  end

    def lastpage
       @fio = ['fiomall20','kissfiomall','lovefiomall']
    @current_page = 4
    @newurl = URI.parse('https://siwy-denim.myshopify.com/admin/orders.json?limit=250&page=' + @current_page.to_s)
     @orderNum = open(@newurl, http_basic_authentication: ['5b0a2afb84f8ff8b14088c9b5542efc0', '00b35a5599c613a0517040145b26af49']).read
     @orders = JSON.parse(@orderNum)["orders"]
     render "fiomall"
    end



end
