class ChatActionCable  
  def initialize(app, options={})
    @app = app
    ActionCable.server.config.allowed_request_origins = ["https://enochchatapp.herokuapp.com"]

  end

  def call(env)
    if Faye::WebSocket.websocket?(env)
      ActionCable.server.call(env)
    else
      @app.call(env)
    end
  end
end