require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')


get('/') do
  erb(:index)
end

get('/triangle') do
  length1 = params.fetch('length1')
  length2 = params.fetch('length2')
  length3 = params.fetch('length3')
  @triangle = Triangle.new(length, width)
  erb(:triangle)
end
