require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path=="/items/"
        item_name = req.path.split(/items/).last
        binding.pry
        @@items.includes?(item_name) ? item = @@items.find{|i| i.name == item_name}.price : resp.status = 404
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
