require 'pony'

post '/mailit' do

  Pony.mail({
    :to => 'vuorio.ville@gmail.com',
    :body => erb(:email),
    :via => :sendmail
  })
end