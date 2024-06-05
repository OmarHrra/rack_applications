require 'rack'
# Cargar el middleware
require './logger_middleware'
require './timer_middleware'

class MyApp
  def initialize
    @app = Rack::Builder.new do
      use LoggerMiddleware
      use TimerMiddleware
      run MyApp::App.new
    end.to_app
  end

  def call(env)
    @app.call(env)
  end


  class App
    def call(env)
      [200, { 'content-type' => 'text/plain' }, ['Hello from MyApp']]
    end
  end
end
