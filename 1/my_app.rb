class MyApp
  def call(env)
    # El estado de la respuesta (200 OK)
    status = 200

    # Los encabezados de la respuesta
    headers = { 'content-type' => 'text/html' }

    # El cuerpo de la respuesta
    body = ['Hello, Rack!']

    [status, headers, body]
  end
end
