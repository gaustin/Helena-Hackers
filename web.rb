require 'sinatra'

get '/' do
  erb :index
end

get '/codeandcoffee' do
  erb :code_and_coffee
end

helpers do
  def class_for_tab(path)
    if path == request.path
      "active"
    else
      ""
    end
  end
end

def send_public(filename)
  send_file(public_path(filename))
end

def public_path(filename)
  File.expand_path(filename,
                   settings.public_folder)
end
