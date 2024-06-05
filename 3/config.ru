# Cargar la aplicación principal
require './my_app'

# Cargar el middleware
require './logger_middleware'
require './timer_middleware'

# Usar el middleware
use LoggerMiddleware
use TimerMiddleware

# Ejecutar la aplicación
run MyApp.new
