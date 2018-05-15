class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path==/items
        item_name = req.path.split(/items/).last
        item = @@items.find{|i| i.name == item_name}.price
  end

end
