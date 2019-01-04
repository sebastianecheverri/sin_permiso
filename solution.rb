require 'sinatra'

get '/' do
  if request.env["HTTP_PERMISO"] == "soy-un-token-secreto"
    msn = "Si lo logramos!"
  else
    msn = "Sin Permiso"
  end

  msn
end