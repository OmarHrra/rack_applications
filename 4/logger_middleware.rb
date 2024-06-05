class LoggerMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    puts "Received request: #{env['REQUEST_METHOD']} #{env['PATH_INFO']}"
    status, headers, body = @app.call(env)
    puts "Responding with status: #{status}"
    [status, headers, body]
  end
end