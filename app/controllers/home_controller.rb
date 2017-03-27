class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @options = { query: { site: service, page: page } }
  end

  def questions
    self.class.get("/2.2/questions", @options)
  end

  def users
    self.class.get("/2.2/users", @options)
  end
end

class HomeController < ApplicationController
  def index
  	
  	
  end

  def demo
  	# Use the class methods to get down to business quickly
	#response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

	#@document = response.body, response.code, response.message, response.headers.inspect
	stack_exchange = StackExchange.new("stackoverflow", 1)
	@sorular =  stack_exchange.questions
	@kullanicilar =  stack_exchange.users
  end
end
