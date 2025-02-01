
# app.rb
require 'sinatra'

# This route responds to a GET request to the root URL (/)
get '/' do
  erb :index  # Render the :index template defined below
end

# Using __END__ allows us to include template code in the same file.
__END__

@@index
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My Sinatra App</title>
  </head>
  <body>
    <h1>Hello, world from Sinatra!</h1>
    <p>This is a simple web application built using Ruby and Sinatra.</p>
  </body>
</html>
