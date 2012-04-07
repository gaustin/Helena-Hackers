require 'sinatra'

get '/' do
  'Hello, world'
end

get '/codeandcoffee' do
  send_public('codeandcoffee.html')
end

def send_public(filename)
  send_file(public_path(filename))
end

def public_path(filename)
  File.expand_path(filename,
                   settings.public_folder)
end
