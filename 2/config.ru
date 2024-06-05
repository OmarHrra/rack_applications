# Cargar la aplicación principal
require './my_app'

# Cargar el middleware
require './logger_middleware'

# Usar el middleware
use LoggerMiddleware

# Ejecutar la aplicación
run MyApp.new
