
# app.rb
require 'sinatra'

# Home route: renders the index page
get '/' do
  erb :index
end

# About route: renders the about page
get '/about' do
  erb :about
end

# Parameterized greeting route: renders a personalized greeting
get '/hello/:name' do
  @name = params[:name]
  erb :hello
end

# Contact form route (GET): displays a contact form
get '/contact' do
  erb :contact
end

# Contact form submission (POST): processes form data
post '/contact' do
  @name = params[:name]
  @message = params[:message]
  erb :thank_you
end

__END__

@@layout
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My Extended Sinatra App</title>
  </head>
  <body>
    <header>
      <nav>
        <a href="/">Home</a> |
        <a href="/about">About</a> |
        <a href="/contact">Contact</a>
      </nav>
    </header>
    <hr>
    <%= yield %>
    <hr>
    <footer>
      <p>&copy; 2025 My Extended Sinatra App</p>
    </footer>
  </body>
</html>

@@index
<h1>Welcome to My Extended Sinatra App!</h1>
<p>This is the home page. Explore the different routes to see various features.</p>

@@about
<h1>About This App</h1>
<p>This simple web application demonstrates multiple routes using Sinatra in Ruby. Enjoy exploring the app!</p>

@@hello
<h1>Hello, <%= @name.capitalize %>!</h1>
<p>Welcome to the personalized greeting page.</p>

@@contact
<h1>Contact Us</h1>
<form action="/contact" method="post">
  <label for="name">Your Name:</label><br>
  <input type="text" id="name" name="name" required><br>
  <label for="message">Message:</label><br>
  <textarea id="message" name="message" required></textarea><br>
  <input type="submit" value="Send">
</form>

@@thank_you
<h1>Thank You, <%= @name %>!</h1>
<p>Your message has been received as follows:</p>
<blockquote><%= @message %></blockquote>
