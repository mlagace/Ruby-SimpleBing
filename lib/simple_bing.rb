require 'net/http'
require 'json'
require 'uri'

# The main SimpleBing driver
class SimpleBing
  attr_accessor :api_key
  
  API = "http://api.bing.net/json.aspx"
  
  # Create a new instance of SimpleBing with your Bing Search API key
  #
  # Example:
  #   >> require 'simple_bing'
  #   => true
  #   >> bing = SimpleBing.new('YOUR API KEY')
  #   => #<SimpleBing:0x0000010181aa18 @api_key="YOUR API KEY">
  
  # Arguments:
  #   api_key: (String)
  
  def initialize(api_key)
    @api_key = api_key
  end
  
  # Make a web search for 'elections'
  #
  # Example:
  #   >> bing.search(query='elections', sources='web')
  #   => {"SearchResponse"=>{"Version"=>"2.2", "Query"=>{"SearchTerms"=>"elections"}, "Web"=>{"Total"=>327000000 etc.
  
  # Arguments:
  #   query: (String)
  #   sources: (String)
  #   optional_args: (Hash)
  
  def search(query="",sources="", optional_args=nil)
    params = {"query" => query, "sources" => sources}
    params.merge!(optional_args) if optional_args
    params = URI.encode_www_form(params)
    return JSON.parse(Net::HTTP.get(URI("#{API}?Appid=#{@api_key}&#{params}")))
  end
end