class TimerMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    start_time = Time.now
    status, headers, body = @app.call(env)
    end_time = Time.now
    puts "Request took #{end_time - start_time} seconds"
    [status, headers, body]
  end
end