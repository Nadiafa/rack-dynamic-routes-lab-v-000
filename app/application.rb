require 'pry'

class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    binding.pry
    if req.path.match(/items/)
      @@items.each do |i|
        resp.write "#{item}"
      end

  end
end
