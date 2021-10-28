require 'sinatra'
set:bind,'0.0.0.0'
set:port, 8080 

helpers do
    def protected!
      return if authorized?
      headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
      halt 401, "Not authorized\n"
    end
  
    def authorized?
      @auth ||=  Rack::Auth::Basic::Request.new(request.env)
      @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
    end
  end

get '/' do
  ['My Way','My Sweet Lady','The Nearness of You','An Old Fashioned Christmas','Old School Teacher'].sample()
  
end
get '/birth_date'do
'12 décembre 1915'
end
get '/birth_city'do
    'Hoboken, New Jersey'
end
get '/Wives'do
    ['Nancy Barbato','Ava Gardner','Mia Farrow','Barbara Sinatra']
    
end
get '/picture'do
    redirect 'https://upload.wikimedia.org/wikipedia/commons/a/af/Frank_Sinatra_%2757.jpg'
end
get '/Public'do
   'Everybody can see this page'
end
get '/Protected'do
protected!
    'Welcome, authenticated client'
end