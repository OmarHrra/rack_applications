require 'rack'

class MyApp
  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new

    case request.path_info
    when '/'
      response.write("Welcome to the Home Page!")
    when '/about'
      response.write("About Us")
    when '/hello'
      name = request.params['name'] || 'World'
      response.write("Hello, #{name}!")
    else
      response.status = 404
      response.write("Page not found")
    end

    response.finish
  end
end
