require 'rubygems'
require 'open-uri'
require 'sinatra'

mime_type :js, "text/javascript"

require './mailer'

set :public_dir, File.dirname(__FILE__) + '/'

get '/' do
  open(File.dirname(__FILE__) + '/index.html').read
end

run Sinatra::Application